# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.167"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.167.tgz"
      sha256 "3f1c4d152e738285759d1c03b3e18ef4e3b786e94536ee7c97ea1682f39be5a3"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.167.tgz"
      sha256 "5c2e3e4388bd6dd1fc675ecf0c4c6bf020e6a25be56af80502eeb4a982edec56"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.167.tgz"
      sha256 "b25aa28ecb3b38298aba792958ec7f99bb8d2fc2ec10dc9aaa4cc03ee27b63df"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.167.tgz"
      sha256 "dbf3418d7ad80bab16e3310d6e96a4ce284f94270989c80421ab84739d22639d"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
