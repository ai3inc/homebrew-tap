# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.184"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.184.tgz"
      sha256 "e780265d7ce0f4ec3528ab04df77a5f75224f2efd9b2d2edfad77bb788103a8c"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.184.tgz"
      sha256 "220116c4d948bb458dd07684e23f609576f18ca3b53d333a8f55a9e55411bbc2"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.184.tgz"
      sha256 "d92586b872034810adfd7d0adffacef0b10e0f65b96a7869e2b84457b7dfdde6"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.184.tgz"
      sha256 "75782d552e1d204f9222e72d1dea2a46787b9853e083c8072fcde233e51f2f55"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
