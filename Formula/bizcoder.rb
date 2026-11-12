# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.251"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.251.tgz"
      sha256 "d2570d67b92a211c4246aec60bdc42ddc17b6a54548ea7fbb89e2c8fc60b6b73"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.251.tgz"
      sha256 "4eb935001b1c647034844753dec973ff3069f6ffa3e813f925ca0302cd0a9ddb"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.251.tgz"
      sha256 "067b60d3105d6518e7a759cb201253a992365f6a23781d7bc055b35b04405ac4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.251.tgz"
      sha256 "73bbed99b0b629d50285b292b216f4bab2a00bdb7a1ff389b07513538cdd09c6"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
