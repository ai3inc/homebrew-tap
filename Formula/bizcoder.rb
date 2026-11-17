# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.6.tgz"
      sha256 "a64b3beaf9073cb5b972a25987f304d0c653f8e307073d76971b2fefb74bb4d7"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.6.tgz"
      sha256 "4e95dda7deaed3f5f4193dca2fc1057aaecf78f0cf5904301e8a982e6d88874a"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.6.tgz"
      sha256 "a20b413ceb4c7cb901694eb127b0064eea5342199e48da5c757129553fdc16c4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.6.tgz"
      sha256 "5dab1eb8b07c6a0e0555acf9933e2cf3c211ab7daae4c7e5df285d96da4cb3e3"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
