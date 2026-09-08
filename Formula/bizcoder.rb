# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.215"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.215.tgz"
      sha256 "c8c630c7c11df4c6b1d75c1f7cfbb162a67c80a128dd5fb3a9d86d24ccc8f717"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.215.tgz"
      sha256 "1cfe3e2d5bd2a08a06e59837ab39f113f44fe7999e830aa834c4a9ba4950fcef"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.215.tgz"
      sha256 "be9523d9234d899ddce0d96a69d46b5bccc8ee8b689f4f3ebf8a714a70aa062e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.215.tgz"
      sha256 "bb66059eaf1c25d7d0f744ae3c0cd72143ea2655a7e1041d0c34edbeab5b5399"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
