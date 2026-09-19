# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.232"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.232.tgz"
      sha256 "2789ffabb9fe214085856e98b8f916c00a40f1ed8efb93e471efe0092462bb4b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.232.tgz"
      sha256 "1be960ce9e354979c3b1c4efbf0bbef89aec6927950d8fded5615e786b9e5eba"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.232.tgz"
      sha256 "82c5dd7ced6f16300d2900314d1402f05d4002b3c61183064b11f71ff89bb24a"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.232.tgz"
      sha256 "1b43d062b384da73c4fee9256d7ae2770011bcbc99281179033b44f09633e525"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
