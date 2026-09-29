# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.234"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.234.tgz"
      sha256 "cae18b47208f2ee54df36f40f1db8ecd2f0ce0629815997dec6e9fb20b2e1b88"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.234.tgz"
      sha256 "5a1412201f6ca64c66d65b2af72cf53ee35aaec0235c1d1a554de402bce7d361"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.234.tgz"
      sha256 "03e23279803da215e994af1b201921126bc6d964649671de8d08a5876e0be585"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.234.tgz"
      sha256 "ce235ac5e142db631da7915165b9dfe05f2ffd258676802ab98d2932131c6b04"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
