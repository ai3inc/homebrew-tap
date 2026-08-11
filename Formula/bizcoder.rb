# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.179"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.179.tgz"
      sha256 "de2bed7e638985131229c21e80a16d2293dff66cfbcd0fe52820e8545240ac3d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.179.tgz"
      sha256 "77203d1617f736aff9ab322f2316c2fc5639ba4de61c8bf2dd4f57c816274419"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.179.tgz"
      sha256 "f97ee3bbb805fdc425722f3f54f4693266f14b398749a75daada1b23401a11ae"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.179.tgz"
      sha256 "4b3f27e4e35d66bfa4d9c440f7fd1e40cdd6f2ad18a701ef1012623b39187ea1"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
