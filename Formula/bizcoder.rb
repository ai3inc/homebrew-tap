# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.173"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.173.tgz"
      sha256 "126b635e795a7b86f0b7c9ac1c83f7c3f8db7a52f1b18e6f4f61e0426a01ea84"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.173.tgz"
      sha256 "edc2a5b23e6a0093a52de18464891f5d299659e99c64950ea54918fce4e2cb3b"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.173.tgz"
      sha256 "294c97c9d8d8d9a717ca277dfb28e31684c721bfd34f8772afb1d6a5c5342876"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.173.tgz"
      sha256 "c8910aaad2574f8c4a2cfb7f52c480c337776b5a592e5e61dfa086eb53317b4e"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
