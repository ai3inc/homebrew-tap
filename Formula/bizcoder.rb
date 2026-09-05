# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.211"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.211.tgz"
      sha256 "efe0f52d2698fbfe197554fe5382153e44607cc7c59b4bd32ef36dbb0eda3af6"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.211.tgz"
      sha256 "a7cd123f4565f25fdc7ee044084e0c594b2d7be745b16c3751702237a8cd47b1"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.211.tgz"
      sha256 "c9effe842ed0ccb6d688454a70312e253967a5515e4b34b6fe384abe96b8613e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.211.tgz"
      sha256 "687f07a43107877bee7b301bc95863141b2fae7ae8ff11061104f604de298268"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
