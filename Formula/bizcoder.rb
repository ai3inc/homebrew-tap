# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.176"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.176.tgz"
      sha256 "a2079074ea1ca61f3e6733f1d7304cebe88c0d1c993f0d076ad002f016b10820"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.176.tgz"
      sha256 "75fba7bd9c714ff972406b0dceb279c7ed11ae3e47fe80e54877a99936d6f049"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.176.tgz"
      sha256 "b7dbd3063a72a439a677e3b0259328e1b5227a9a7bc3ccf5c529d69f0b903458"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.176.tgz"
      sha256 "dfb79211e7d3d6fdf769f03257371b49478e84d807d852728f234788764f4536"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
