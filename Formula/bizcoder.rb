# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.217"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.217.tgz"
      sha256 "cb160e0fe8c667b8735cce8e0d983e496f1e7f2263b4269b36756bfc12f5b87f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.217.tgz"
      sha256 "8f315818ef5919bfca6490d8182072794490f5aa2db41f8e5d52e1a3b73bf801"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.217.tgz"
      sha256 "997e83be335626f4620ce821a69db79a61f091bb51512b07d1fc2b4503c7738f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.217.tgz"
      sha256 "de2f0d95c0bfc2987fe8220da86325a3580883e5e7f9877affcd34dad00050c8"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
