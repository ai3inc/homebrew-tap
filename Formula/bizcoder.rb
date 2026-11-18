# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.10.tgz"
      sha256 "ab847bee2725a58e27732fc907c3836779553d1a1a0f1a250ee065decd73831e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.10.tgz"
      sha256 "97f5c544fabd1aa634b0a350f4315c11237ba8c6aa05e41c64008875be19a740"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.10.tgz"
      sha256 "941d42c70ca2707c06b579af565ac6f2f4e5b84cb0ab742cc98d33fb339fceef"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.10.tgz"
      sha256 "f0836824b60b5d97f1d35b9fce611535cac4a05b2dc2e52b8d4e979021cced85"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
