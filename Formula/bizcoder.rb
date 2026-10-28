# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.244"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.244.tgz"
      sha256 "ce1ef4419f46fccc22148337dc0a89d4cc7d0be84ab79a7544bcfce7abfd3c33"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.244.tgz"
      sha256 "774e19d3aad6effaa7ba884b7f9eebbe4fa4b4fe870a98b5f311d3bd255ee3d1"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.244.tgz"
      sha256 "6e74f4f049fb86ada0b18b872e12cff51dc585e4f13c59062006e1e0d62bac0d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.244.tgz"
      sha256 "058d85a442b450f2c3e0bfcceac969315449acb702528fa80872aa27c0eeadae"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
