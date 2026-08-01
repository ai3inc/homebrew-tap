# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.154"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.154.tgz"
      sha256 "8e9a92cab71b625fb64578aa5c1f9bafa6ef6d4a9349225e0d7a87b6f1157bc4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.154.tgz"
      sha256 "49fb4f5add215d082bf05d31cb3a284683cd86fa2bc78930cb82f0fd85b2bd3f"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.154.tgz"
      sha256 "a7c0233ffcb775faf4e31407469437452e1001cf4e6426eac745e9e10cb223c9"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.154.tgz"
      sha256 "0509669c014e698d68eacf24add9b2e429bb4e8121ba69e65a7c064ba0189d03"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
