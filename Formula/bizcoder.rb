# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.221"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.221.tgz"
      sha256 "0b053f2f8952e6c64b79c74c0766be692e3cf315e23504061af2678a33f15283"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.221.tgz"
      sha256 "f2c0719cec981ea2ff1f412a0274838e47514b05eb19d38f220b31a6df7c7514"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.221.tgz"
      sha256 "48db1f3b8dcd0a74eced82587c6fd2b5f741f609a562fd3f997042d841ed8365"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.221.tgz"
      sha256 "097609bd2af9a196498e6ef2083fa7d5ec1f529076c8bf15523e31a8e9259970"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
