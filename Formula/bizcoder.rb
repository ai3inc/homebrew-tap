# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.248"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.248.tgz"
      sha256 "cf4d51db78e2c23bd4e63b8d1c215c72623704a8f4a0c12054f515873a114883"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.248.tgz"
      sha256 "ec9100a3d7201f1623b410487e904108994adf9663d07cdf6efe4fe7f31bab5e"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.248.tgz"
      sha256 "de5cfa342dc38128c39b916303d2c793482ad10adf57d857a67d378aa97c7ebc"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.248.tgz"
      sha256 "1ff86bf239056d0cbf2151f0aa7827cfa0f21d549a823a0a0c32faca13473bfc"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
