# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.204"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.204.tgz"
      sha256 "e28106a10b556064ec3e32907a4749b59eda54af8f7f9640885a46bc42176e5c"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.204.tgz"
      sha256 "893c3956ef83b09884af735601de66928e2b34cc3679094ce4e962d4d10c1636"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.204.tgz"
      sha256 "42d56f1444609346c6713effea0cfaaf0668869beac5d0852e4af1e7b5cca7d7"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.204.tgz"
      sha256 "a5b6ccf194dc53dd1b1d4e3558ea0437983fb451919058e4861cc7831c4b01ba"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
