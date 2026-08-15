# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.188"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.188.tgz"
      sha256 "429faecfb694ca57a2daeeb71bc50d3acb041ee39b371e10fb1b5d721a54d635"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.188.tgz"
      sha256 "ae23ae4ac95832a41b698bb18af955af56ac71f3048e1a675d207e9e4357b172"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.188.tgz"
      sha256 "0d2170eecf9b8543e617cbcaec4a24e7a78b8e0c914245329919af6b0ad6dcf3"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.188.tgz"
      sha256 "1230b811ed07178b4e7a7641b2b3dcfc61e1afe6c55dc3686edb0653d3855a71"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
