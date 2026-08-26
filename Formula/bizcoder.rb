# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.199"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.199.tgz"
      sha256 "f0c76c26c8f673f51d84b80930d30756cbbff943e7314a0c7d918d7f97ab2d3e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.199.tgz"
      sha256 "f12620769ab44d255467e2cdb9237fdd58d9eb90fe462cc2a262bf041be60d09"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.199.tgz"
      sha256 "9ac5e37e2d3be417a72a3b752ac54c1540cd9e115a78494da65d9ba5adeda840"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.199.tgz"
      sha256 "bfce921c02d4541bfefd2d1293ced96540bb1dc82d42abf1df2f802a49baafc9"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
