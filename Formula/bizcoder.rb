# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.246"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.246.tgz"
      sha256 "26bdcb2d80e78ffee553fd507c980a2f83df1d647d40f982c11fba454ec3b722"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.246.tgz"
      sha256 "ea0012551769910e500e870b11b0117a6a4a2f3ec536e9975745d0e5fe40ba33"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.246.tgz"
      sha256 "f619ddb76b8b69fa2c656db2b103bb8effee4f27268a497d535d58eebda4e703"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.246.tgz"
      sha256 "e628ec98e1acc96f0db04241bdabcb59b95f867dc8a04859641fd18685c9285b"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
