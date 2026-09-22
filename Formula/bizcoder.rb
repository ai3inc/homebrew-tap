# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.233"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.233.tgz"
      sha256 "9c533cd5f0531ddf263d037e395cef20d140e3c98fef0fda62239f0ea35b621e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.233.tgz"
      sha256 "96a9517c92b14b719152da775095b314cd7e18eac5cda02a211240cecac7ffd9"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.233.tgz"
      sha256 "8e35d0b7824e2876e9f0b72d441efbc39919188bfa15f37c29fb215bc09c4318"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.233.tgz"
      sha256 "eaf2e481d69be2c32652cd7b6cff8be57bba1f39a72db40cc376a95c5c85a931"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
