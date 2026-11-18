# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.11.tgz"
      sha256 "df98a976f811e2d4ca9d5618e8841b0e6fc82c2d73a107473d6b223d61d8cf7a"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.11.tgz"
      sha256 "f7c4a130809f7d318f59cb8fcdd4195afd05ad0e41b9363f1fb51b72098b4250"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.11.tgz"
      sha256 "aeac8c9dc748121ad20aea87e37d8947a8d29827daa0f63936e7597919657693"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.11.tgz"
      sha256 "fe19d8ebdec31f3073847c3373d8c1aa701beaa3f587cfc2984969e93acdaaf2"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
