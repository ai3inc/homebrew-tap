# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.187"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.187.tgz"
      sha256 "a577c75fbeababceece313d578aaa2c584872bd34658974b785a87d21a6e6d9a"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.187.tgz"
      sha256 "73ff70c6c3bc238b222809abb8ee3be2217d738af68221837f07477ec0179834"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.187.tgz"
      sha256 "2e6b34fa55a0d8b544bc9359871b0b4252035399384a6ee0754f8c9956b2fd02"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.187.tgz"
      sha256 "c75cfff70f52213883884dbebb9add4755a3658a25512fe3c93773e7cd6177bb"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
