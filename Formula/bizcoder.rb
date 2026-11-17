# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.8.tgz"
      sha256 "90dbac78df55c552034d88c01df98483758d3099a3f177e97409d42d08461994"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.8.tgz"
      sha256 "67510c6d0e3b581905a32d74c3d39ff535b345b0c15be7db6a1c1a6124e1b457"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.8.tgz"
      sha256 "823a4d87f53da53495324ce9ea63c53d20db9850f919a63fdfa35f0ab9a193bf"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.8.tgz"
      sha256 "38261568a5f31eb4ce7f21c3262f7c85da987e586c32fd6523fc9bb72801df9c"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
