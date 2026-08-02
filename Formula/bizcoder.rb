# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.158"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.158.tgz"
      sha256 "0f1fe25de71b7a1d489c84b5c9b96897bc90bb14b504a4e1911eb99a4fbc9d52"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.158.tgz"
      sha256 "fb305ba6dd89bb2e5b90494a7a3d7093b1ad005b3af29c74f6c549632a5dd2d6"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.158.tgz"
      sha256 "5f7c16c4e5db866498bb26ab266a7772edddb86834767b1bfa84ea961b6ac7e5"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.158.tgz"
      sha256 "e71033fed85b43b24d27bed626b0a55611c3eb4789ac7ee737e38624a18da461"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
