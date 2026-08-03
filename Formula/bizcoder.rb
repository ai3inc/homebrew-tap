# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.160"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.160.tgz"
      sha256 "491e42a7f00eb77e4beec255c74b7fd6035fdc668084b9fdb82a8b18cf660411"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.160.tgz"
      sha256 "781d13057345a5aaa54bf6989259e646cbe4db02ec42d4d6f7c4acb5523e23dd"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.160.tgz"
      sha256 "c88e794a65d12c200c413a5250c08681d52dd7a69efccaf1c01630f0b98baa39"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.160.tgz"
      sha256 "a416ce3b8cdbda6fcab0eb6f39bfad11a5c79e0de388af87dae33a58e17f0b8d"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
