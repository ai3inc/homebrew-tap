# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.161"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.161.tgz"
      sha256 "afea495a8ffd969ab0f7f433b0e812bd30feb95f69e0946de90d87f20a3a2fab"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.161.tgz"
      sha256 "2a27179c770224b0ada2776427e7b98b1746ec5af86b0d0f8dbcd01e6419ca47"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.161.tgz"
      sha256 "93c7ba1c7e624e648e90282bcaf660a38a27f052a9e2288e33171d265b96ce28"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.161.tgz"
      sha256 "7110a7473d1b571ef09df19f9541b0f3b695ddb4b9e95af4732fab09d342e8f7"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
