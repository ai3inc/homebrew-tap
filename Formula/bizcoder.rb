# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.196"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.196.tgz"
      sha256 "ae81ff24fb36eabd7941fad0d088cb8ca60ffd1b73609c131e816ee2e073e511"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.196.tgz"
      sha256 "7df198208e6be3ffee9357e3c7eb51c49cfb3b308f6a48a8f332a1f20327372f"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.196.tgz"
      sha256 "01c8aa4502a47ff51e8aac58110b0039e44a2f5285809506893dedcf95ade366"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.196.tgz"
      sha256 "2de1727937a218511ab9ba43aad9390c1403ef99135ae77e8354a24f15f37d90"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
