# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.218"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.218.tgz"
      sha256 "b40d5d45de3c08a044f86748238fe463f35c74908b46c71f59490733449f065c"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.218.tgz"
      sha256 "25d8375328b601c14b9de9a0eeb67247cb6e55fceddc33039ee17d8b9325a2d5"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.218.tgz"
      sha256 "3e196fd758663d3e090f47e9e3ce41fe06be9aa8f90983fd53980790290ae31c"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.218.tgz"
      sha256 "b5b28fc5155f8c93059065829dc9afdc97b3998ac27ae79692d7d5107d734237"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
