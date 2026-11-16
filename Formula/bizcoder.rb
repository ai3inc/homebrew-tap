# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.4.tgz"
      sha256 "e786107353fddd078945dce0ab34d4ab6f9de288fb9f68d5bf003c20e8685009"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.4.tgz"
      sha256 "6341eda257c97a20cde313644f54fce44f5130d18a1687584af51610d0a74487"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.4.tgz"
      sha256 "4e30e8adabaadb5054fc31b2c5884ecdb14b555e7108f0de3b7c8aaa173c1890"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.4.tgz"
      sha256 "a1097f013c06c6337d69a19c7ec5a3ff6539b09c2536c0cff0b970ecc071487c"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
