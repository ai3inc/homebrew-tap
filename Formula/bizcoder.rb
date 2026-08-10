# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.174"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.174.tgz"
      sha256 "7feaee45cd1e90965e94a4a63818b3f7b2c713b4fffbc96746fc15b0771b1f84"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.174.tgz"
      sha256 "1f66bdf894309f3928ad6695deb2d2349b75b15bce86eb710c348ca62cf9c90d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.174.tgz"
      sha256 "5aef641986070ef7e5445b5beb8b67162fe4ae1481da6285b920d7c8161a42af"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.174.tgz"
      sha256 "cdf00db92558841c4e3d3270258264f8fc5d34a5972fb5ad25c1742ee725bfbd"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
