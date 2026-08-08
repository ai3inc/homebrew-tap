# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.170"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.170.tgz"
      sha256 "9fbfce538ed2a1504d3705c01bfc46d703c0d4102f78f0bd8938fc4777b0d6e3"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.170.tgz"
      sha256 "825a31c8adc550b5e41653ea001da841164e90dbddcde9fd2f63d4bbe82d12f6"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.170.tgz"
      sha256 "4350c7251748ac3740a19e48e567c425a8df6fc00453d092e081743e81eb9877"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.170.tgz"
      sha256 "d3023251f0e9515d0741d2aad1641e92442d3e0aa3a695f324bbf070be0f06ad"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
