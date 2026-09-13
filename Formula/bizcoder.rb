# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.222"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.222.tgz"
      sha256 "075aa485a35524c7ab880db428df7187d4fd7b94dff1aa6abc9a835690235b24"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.222.tgz"
      sha256 "541bd97baf25f45066b1d847e4e18d9a18d390242b106bde9fce8f8c08510e57"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.222.tgz"
      sha256 "3e2a9a57a77c5cd3da56dd1e5613503bc2bda13b2c838c7bb8c46d99e86cfd40"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.222.tgz"
      sha256 "eeb8b3e42dda10dfd60967392628849a052a84e2a5869b7230737d757b801841"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
