# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.165"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.165.tgz"
      sha256 "0d3470a2ba0a42ab6b1d328c7a389dee69064ece6330b14037d989ca0562520e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.165.tgz"
      sha256 "914474c67b2378a11f435e7ee86a1f0d96ef57cf0f117df8823c2a5a0df90f58"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.165.tgz"
      sha256 "00ff1c3209c63d8f2cd5d01460967a3b9082a35f8a2a097b48802ab21480951d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.165.tgz"
      sha256 "a427a7f6812118306e0650f02e7478da03429c7df31609df03c1d6bafc660a67"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
