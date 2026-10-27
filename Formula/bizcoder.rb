# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.240"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.240.tgz"
      sha256 "5545a52693e65bca19ff5aa0ec29170762605cc8a05d79a24f8a09d7268a609e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.240.tgz"
      sha256 "6cf5d6f805686b9c4077d034ba7cff8851bedc03b46d7a90867dbf0904ee7e46"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.240.tgz"
      sha256 "3c24acbf90f4084ee6463c0fbb4bfd87bed852965bc50c98e63b1a3f06ce7633"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.240.tgz"
      sha256 "ef163942539c87e3927ca753ad4fb6671a6aca8d6ccfacd981992824cdc7ee48"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
