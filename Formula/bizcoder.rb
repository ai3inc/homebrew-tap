# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.209"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.209.tgz"
      sha256 "a43607ab5b84d839456e9473b1000fdb0bbd226b9ca15f7f8564074970374ddf"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.209.tgz"
      sha256 "5c1b46b0ff99d2df9cfdc9fd55c2359e385aeeebd6710c983ad5665200eaa06c"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.209.tgz"
      sha256 "1f04134294d81833488f05d1b1a90d9289a94533aa4bda4b84348d0b18bcafbe"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.209.tgz"
      sha256 "85f6e0c9763f8c2368816fe4cfb4258cf71fdd3ab019f56dae25b1346bf460f5"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
