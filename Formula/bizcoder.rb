# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.237"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.237.tgz"
      sha256 "90f115157193a1cf3b743efb5e7d2b173dcdd9900c8000d088bd4117c2261c8b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.237.tgz"
      sha256 "09a6d74389324487f5f96df59761e16e4a114f6b9ad8c1b4544fc9012c9da605"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.237.tgz"
      sha256 "d14a87a2959dbcaeed323d2920bf676f5fef45808e6b4aeb1b718bae3c59fe63"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.237.tgz"
      sha256 "e6041dfdf500744b04aef827d40c3cd8c23269ca323db40e34465a7a5ff27b82"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
