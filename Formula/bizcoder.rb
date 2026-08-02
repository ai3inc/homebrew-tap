# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.155"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.155.tgz"
      sha256 "28b913a887f619a82108fd5f46491cdf7a9902f0c7a7a3174f4e51c7dfaec07a"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.155.tgz"
      sha256 "ced22396511d2b4ff2c0fff8503a70b10771f16609c7bd2373da35917046f7e9"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.155.tgz"
      sha256 "3b9ea9b726ff467beb98362d15ff42e673ab9dc7ccb2bc8fd3c0818a790627fa"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.155.tgz"
      sha256 "4d8b9800c8820509a456b0d15c840289c67a2426a191b374a8ba6fb0bc585425"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
