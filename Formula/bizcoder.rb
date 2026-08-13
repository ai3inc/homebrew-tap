# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.185"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.185.tgz"
      sha256 "4a982f4a1d01a7136cedf976a999795f31fab18397a13e62d3d398527711d616"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.185.tgz"
      sha256 "8496f6a6c0d6500225602055a83d822cb180ed676461fe32b0c55ba9ddf95247"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.185.tgz"
      sha256 "503e91f111fae4b376732bf5c8b7d3807308cb0ddaff080080d52baf850ab63c"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.185.tgz"
      sha256 "e3cfd6892538c2af5237d10929390fee3addab5940120d026fe09d5936de1f5c"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
