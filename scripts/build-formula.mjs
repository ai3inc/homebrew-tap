#!/usr/bin/env node
// Formula generator — the npm registry is the source of truth.
//
//   node scripts/build-formula.mjs            # latest published version
//   node scripts/build-formula.mjs 0.3.152    # a specific version
//
// Why generate instead of hand-editing
// ------------------------------------
// The formula carries a version plus four sha256 checksums (macOS arm/intel,
// Linux arm/intel). Updating those by hand goes stale or wrong, and a wrong
// checksum makes `brew install` die with "checksum mismatch" — which users just
// read as "the install is broken". The workflow in .github/workflows/sync.yml
// runs this on a schedule so the formula follows npm automatically.
//
// Nothing is hosted here: BizCoder's platform binaries are already published
// publicly to npm (that is what `npm install -g bizcoder` downloads), so the
// formula simply points at those tarballs.
import { createHash } from "node:crypto"

const REGISTRY = process.env.NPM_REGISTRY ?? "https://registry.npmjs.org"
const WRAPPER = "bizcoder"

const TARGETS = [
  { key: "darwin-arm64", os: "macos", cpu: "arm" },
  { key: "darwin-x64", os: "macos", cpu: "intel" },
  { key: "linux-arm64", os: "linux", cpu: "arm" },
  { key: "linux-x64", os: "linux", cpu: "intel" },
]

async function json(url) {
  const res = await fetch(url)
  if (!res.ok) throw new Error(`${res.status} ${res.statusText} — ${url}`)
  return res.json()
}

async function sha256(url) {
  const res = await fetch(url)
  if (!res.ok) throw new Error(`${res.status} ${res.statusText} — ${url}`)
  return createHash("sha256").update(Buffer.from(await res.arrayBuffer())).digest("hex")
}

const requested = process.argv[2]
const version = requested || (await json(`${REGISTRY}/${WRAPPER}/latest`)).version
if (!/^\d+\.\d+\.\d+/.test(version)) throw new Error(`unexpected version: ${version}`)

const assets = await Promise.all(
  TARGETS.map(async (target) => {
    const meta = await json(`${REGISTRY}/bizcoder-${target.key}/${version}`)
    const url = meta.dist.tarball
    return { ...target, url, sha: await sha256(url) }
  }),
)

const pick = (os, cpu) => {
  const found = assets.find((a) => a.os === os && a.cpu === cpu)
  if (!found) throw new Error(`missing asset: ${os}/${cpu}`)
  return found
}

const block = (os) =>
  [
    `    on_arm do`,
    `      url "${pick(os, "arm").url}"`,
    `      sha256 "${pick(os, "arm").sha}"`,
    `    end`,
    `    on_intel do`,
    `      url "${pick(os, "intel").url}"`,
    `      sha256 "${pick(os, "intel").sha}"`,
    `    end`,
  ].join("\n")

process.stdout.write(`# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "${version}"
  license "MIT"

  on_macos do
${block("macos")}
  end

  on_linux do
${block("linux")}
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
`)
