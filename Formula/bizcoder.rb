# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.208"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.208.tgz"
      sha256 "20844ad8185c50d00f72a5db6b4c7e54e6184630dbf0f44ab4facdfb1930c872"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.208.tgz"
      sha256 "000c4794c9db766f53d49562e115c29dea9cf2f094949ec7e6d93ddeda4dfcc7"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.208.tgz"
      sha256 "d3f0e3f236127a35240cff91c3f6dc1d35df599236c8a8a8cb56e3f1e73a9186"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.208.tgz"
      sha256 "0fed207b04c56446bfd6aad051fdfb1a168182e1dbd369ca368aff1ce560f768"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
