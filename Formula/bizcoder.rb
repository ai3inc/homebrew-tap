# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.210"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.210.tgz"
      sha256 "e7c38e6d9d94d1d80e7881274306c8eb9b50c2094a9cf04cc5e79123e2a6879a"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.210.tgz"
      sha256 "8f05882f8ad78adaec0733dd3ec399aa3abcd26d3836444b87e1da0f8b209343"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.210.tgz"
      sha256 "1f6bd533bd18b2dcc2cc28d05e6a0eb404497b5c45941d4f0e41cc4c8142d09c"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.210.tgz"
      sha256 "3e4334a1488e5973a283593f3eae779b931a4191fe5e34e498863f0d063233b7"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
