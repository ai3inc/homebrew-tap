# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.200"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.200.tgz"
      sha256 "540e1209d897e7785d4461098bb41d9955e568c731317853c01b404caa2b938f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.200.tgz"
      sha256 "3f8f21d22f1dda69b97d40b7cebc11dc58f1fe28fe537fe739b266e3311323fe"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.200.tgz"
      sha256 "2b5106b9723e1272f4cd44be7363977a576c9f2dc513e4701d5dc53807b6f2fa"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.200.tgz"
      sha256 "684c2203fd10b729fa9bc36fb6cc062d2fb182f102e531cacf011ae052b1eacf"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
