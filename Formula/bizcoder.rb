# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.168"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.168.tgz"
      sha256 "ef253696e4e8c4b329194a9e2b44e2044cd6d46e83556de199a392d3fb370732"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.168.tgz"
      sha256 "5a1a22669546433e7bcbe8785dd0fd6e226ce19bd830ebfcbf698e336683e573"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.168.tgz"
      sha256 "64d96fc87d2a2d372321de900d187f6d2230af11d878f18074a1a043a4b88714"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.168.tgz"
      sha256 "8909f6b03210bd4cde97646fe7d09f9860c470ec76ed7103a6afc279f269087d"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
