# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.166"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.166.tgz"
      sha256 "b43137d992bd6c277c12c81a58aac2ff47fb3453e16378464189231c165967d7"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.166.tgz"
      sha256 "e7cb86ea9ac4b9d0aec356ac478b0a89655f75390c22b8e25fc545caabd9118d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.166.tgz"
      sha256 "5982afb41228d2a36dbf0c4b5ee7125219f115a4b45c1e88a62d420dbc6731ab"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.166.tgz"
      sha256 "a80dac33a7ca748a2ecbb6d4f075a310e94120a91aa6d45ddd9d0bc19fd984b8"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
