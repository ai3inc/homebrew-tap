# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.152"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.152.tgz"
      sha256 "2f19c9bcfdf09ba55bed4d1f28482af88cef078f1e7a16589f0f643cb18250a9"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.152.tgz"
      sha256 "731bef8505658c755441ee653a0198145640fe9fa34e4a4f3445706932065c83"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.152.tgz"
      sha256 "7408821521ca9a914bd003d2c2bece529cada686e7caa5ae877e02da679bfc20"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.152.tgz"
      sha256 "a0b3822b8c5f8f100c7d0679583c83373be4679790353d18b74b0b3f40af63aa"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
