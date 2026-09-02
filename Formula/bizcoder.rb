# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.202"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.202.tgz"
      sha256 "a5ad36018fa4df097d851ec45c27ea4716ac9e075c82059cf2fb73835d02924d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.202.tgz"
      sha256 "e1052a653964d6e107de1f83515c530af256349c791d83c6aa3804d2d03f39c0"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.202.tgz"
      sha256 "d836b79887132e9211fface373134b15209129408ff51e5ebd25b3345e2f4d86"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.202.tgz"
      sha256 "9c2456ee3ad4f203c7d63e4dff5cd68a43cbf0c40936c57d06e3eea843ccf413"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
