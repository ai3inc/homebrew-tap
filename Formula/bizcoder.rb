# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.249"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.249.tgz"
      sha256 "cfd70fac173e3596b560587a0dd726b2e9a43e3f823f254ec30fd6943cca47fd"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.249.tgz"
      sha256 "9b5a18ae3b9d3ae1ef02916eeb92e46938d8403df94e6bf899ab88550f4cd1c5"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.249.tgz"
      sha256 "1b54b4cccaddb86cf59d4f512151a2f617bb8c8b3160b6b527a1184f62cb352a"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.249.tgz"
      sha256 "21786424a9f7c6299effe626d9b4f1df2f974c613a220e5e1b881e85dc36a9c6"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
