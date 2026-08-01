# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.153"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.153.tgz"
      sha256 "90e893296c196eb483ec4f6db8d0cf7cf33163c7a0c08825c2202db9d398a463"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.153.tgz"
      sha256 "84241f8177786cc9864812e04fd2c26f7702a8d0bd93b04c33837ff941427fd2"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.153.tgz"
      sha256 "da6e2f7499b24a113af9b11d172ee1603f5068269524c0c9caa0fa3e72c5742f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.153.tgz"
      sha256 "71a8b3ef71acd15477cfb73859bd31b0de7b8943ad3238bebef3886206963da8"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
