# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.213"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.213.tgz"
      sha256 "61919cfdf551f6468e211a9a728367232ee79e7f22b15ca6e0c1bddfe0c6cd8b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.213.tgz"
      sha256 "84bbe5c1988f9abb437ae2d6a452ea8f561deb1287889a6343b30f1088336c35"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.213.tgz"
      sha256 "aaa301b5719f91348ee4fdaadb70b78467b29f2f5f244eb4e1b6557de8e72183"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.213.tgz"
      sha256 "025406199735c5513037a2609d24e7433ea9fa355431a1af8f8e087cd06baa14"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
