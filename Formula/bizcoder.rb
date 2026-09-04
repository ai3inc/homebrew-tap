# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.207"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.207.tgz"
      sha256 "e1566c44aa0c243997698923f9cc651950c2993d45c9f649c9f30bf31a55508b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.207.tgz"
      sha256 "8caaa294d7a5e0e58693c43a5dbd22ad6bdaf9369d22a423d524f978ed53857b"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.207.tgz"
      sha256 "14ed2a958041c535d0424e02104d650ce0cab67f087ca740d9436584335be7ce"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.207.tgz"
      sha256 "ad274fc9b1f98635ac054aca3a41ffd2b5e39f3c186c2bebc1c8fc5df9abb005"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
