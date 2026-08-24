# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.195"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.195.tgz"
      sha256 "9aae8415ecac574d885b22125533fd3cda2cc307a9a581873d581dad6916be96"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.195.tgz"
      sha256 "ee890866aa8b09b413df018799e7f2fa141bc83c5336c82783d30daef1db1f48"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.195.tgz"
      sha256 "cd0c8703409b10da2e20d8e58aa33e9f4c84a022c89c54a63dccebf16da6a6e0"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.195.tgz"
      sha256 "9c743cad3d2da490a3f122f0a56a5e418eed812bc757903597f03d2f41cddb18"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
