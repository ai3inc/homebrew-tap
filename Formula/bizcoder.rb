# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.2.tgz"
      sha256 "7f4712c9ec7ccce724d9d3187ec11eb5168c5b16c2815a8c12ae12432d91c7d2"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.2.tgz"
      sha256 "3371c59e0f410f77a25028c2667be62046a01ef6de2ed3c6a3b60f5bfe32db57"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.2.tgz"
      sha256 "66e33f19b84777054ed998909658f304ec6918a4caaf930285e67761c03957ef"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.2.tgz"
      sha256 "09f16028e8fae9ea65585300ef815a5d40af3e74064613d44f1288d71bf22d52"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
