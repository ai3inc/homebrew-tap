# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.169"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.169.tgz"
      sha256 "d516a299dbdfc48db4da1be1b5ef92912ec0ae9653d1f97961ae448eb03335d8"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.169.tgz"
      sha256 "3043e8c1a32ee85517d1a5c66491d028c684272aaafdd99ed287364992050506"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.169.tgz"
      sha256 "adf8b2c497ed941fb498ab170e19baad591cac6752db08a8e346c2da217310fa"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.169.tgz"
      sha256 "56478a3eab12172a10958dcfe387fbee8ab918de7b9ef71c49faa569e31c6d90"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
