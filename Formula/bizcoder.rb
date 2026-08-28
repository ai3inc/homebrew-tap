# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.201"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.201.tgz"
      sha256 "f0338090bbe8893e184bbdaabfeb8e609fad9e011140652ea665b6d7b88786d9"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.201.tgz"
      sha256 "738905539709e196e3c527697d2a6cfb9cb6ebf79e79e07618375b8b3f1ff572"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.201.tgz"
      sha256 "33f25d69cc5ce936cfb83829219c34cb658104f2d5759207f29e350e013cf480"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.201.tgz"
      sha256 "cce816f5ee369c7f17ee029f95e70cc8f77ef7978d713e76de61a96eb01549aa"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
