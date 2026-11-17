# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.5.tgz"
      sha256 "272cd011d80723d4423d2ebfa9323e1a76b8188e099ccbca23a3bcc580ebf64e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.5.tgz"
      sha256 "dd517308a3a37cc585e8565a022e334fa6047775311b3bd4c40bce2bb8936145"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.5.tgz"
      sha256 "fce14d8b7d87f7959fe07a91827077f09d3ff17de4ea76595082265a8a05d0d1"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.5.tgz"
      sha256 "a3692c91afb13aa81e809234c011af0d3e843021470a4d543fd44676fdc23e97"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
