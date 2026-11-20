# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.5.1.tgz"
      sha256 "055bca10dfc9ba55da9c034e344b973b1e131d439a90e4d2fc932fba744cb0d4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.5.1.tgz"
      sha256 "3d760a8ab4352498e7b4469ceb4fa77fc39c7f9d50924273d9499a1cb72a8269"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.5.1.tgz"
      sha256 "e9f706f0a3d15715543298ba28f65a75c582caef04e3bb4ca1043121094e5769"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.5.1.tgz"
      sha256 "842b30bec4f8da799edfc2514788b09fad62f8645f64c562efdac0078b3c80d4"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
