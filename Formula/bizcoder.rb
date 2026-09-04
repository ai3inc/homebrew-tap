# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.206"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.206.tgz"
      sha256 "66a19e4b302e6afe6267fd4fa6ca8bfd70e474c45c03174022a7660d9af4cb4b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.206.tgz"
      sha256 "71d595c77a9a8aa08acf87771d56b8a51e17c305dd1026380f2077feb33ed906"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.206.tgz"
      sha256 "054fd361500b80ea01002cfbdce4d9dba80678e014a756002c795c08e8badd67"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.206.tgz"
      sha256 "5167c5fbee5ab513317b4c41effe360932793f2ec896ba5409e6d5057af71c2c"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
