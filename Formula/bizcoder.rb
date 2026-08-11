# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.181"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.181.tgz"
      sha256 "b8e1bd52debeec21ed2574ecf0dd2becf373d00161fa3d7cfbdd5546ee011eae"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.181.tgz"
      sha256 "10a342e6116ddb9f1df802cb58b63432dbf7d57b8f427687b804be5343dc4249"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.181.tgz"
      sha256 "ba61cfb7a2dc1fa77e309e5ba79380227de31d0b80faf6b29e6c51020bef1628"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.181.tgz"
      sha256 "456750fe1ae427f57276e800ca836bd5331fe15e1322a30ee398b5e5de946435"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
