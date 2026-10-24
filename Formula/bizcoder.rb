# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.239"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.239.tgz"
      sha256 "09c2e62bdb3bd75e066008048e6524d9f9872edbb41caa2aa4b0603c7025203f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.239.tgz"
      sha256 "0ee45337a365030d102176bd7b2c672bfa64fb385cd03451f5bb21da84595917"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.239.tgz"
      sha256 "7b6ca62496fdd7c6ee7c0f1ebeba702cba979cd5546acb7bc50754847ce6d464"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.239.tgz"
      sha256 "2c588a2e68398d13cc746fae09f350d28f15431c0e30c677b8bc7c428a613a3c"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
