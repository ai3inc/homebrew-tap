# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.224"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.224.tgz"
      sha256 "a3caa31c4dee265aa1ff44bd82f1a293889040c40324c4dcbc32cea12c8a107b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.224.tgz"
      sha256 "60958ac505d4f92dca746a91070efb1ed5e15f5d12d34fb1d790f1b8f478c370"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.224.tgz"
      sha256 "bda21696c5ad37b4f86fc664e146d4ef1cb8942f694679f02810b5dd6103fd1f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.224.tgz"
      sha256 "5252be8884993adad9bc44ba9e84324efc779997408ffa8f91dcf73a3c1af544"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
