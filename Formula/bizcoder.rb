# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.178"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.178.tgz"
      sha256 "2144d85f8e6f9b4638122520b27feb3e5a345eb77bce251fd8a8ff9c33286420"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.178.tgz"
      sha256 "27a5f0b1f419903204427340b697683f6005aa2766a17c03990bb11060c2893b"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.178.tgz"
      sha256 "3a62fa77254c3a60576be0f13614a69f3ed2e2c3bed858faa7d9ebdd29f8f35b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.178.tgz"
      sha256 "a972b5b471ce85f4dfbadfe0da74d9f613850b64baf93277d5b6786740a25619"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
