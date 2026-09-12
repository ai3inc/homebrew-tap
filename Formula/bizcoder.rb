# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.219"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.219.tgz"
      sha256 "f0911ed24a43bcca862d6d2e509d72edbf6960cd513881faa6094a76f2014be4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.219.tgz"
      sha256 "2d4a79d24b53a16716c888cab20ec343d78b8ca59858021208c30c0c2801124f"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.219.tgz"
      sha256 "2371c6c286edc7b5ab093e7a22d6c944f2c0b951550eef663d2d3bf4ae3ddd35"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.219.tgz"
      sha256 "d7cbb81b605552a86c434c80f9ee93a44383ff4e60ab76bc9db66ab81fe3b559"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
