# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.203"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.203.tgz"
      sha256 "09b187f5c077d6d005e4356973166299784ed11b7832671f71feb93fcbf005ee"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.203.tgz"
      sha256 "3abbf767108c8daf59ba41d3d591fa62bb074dba87923bea0df864ea8f15e7f4"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.203.tgz"
      sha256 "3a67f9e4809d79549574f6996a1159d20afe12de85a3f315e0025fffc2d79769"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.203.tgz"
      sha256 "3824e084524c50924edb41ca1e2b55a7972d35f516b9312cf4f7361da6248194"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
