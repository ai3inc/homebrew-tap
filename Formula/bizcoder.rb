# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.193"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.193.tgz"
      sha256 "6bf81dd9d8965335e1a431d07bc9c84295cb30ec7f0c71ca7cafa68c75dd22c8"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.193.tgz"
      sha256 "0ab731ca8fb7c29c0df9631b89f81ab1215e67fa001d4ff878a2edbae9d22e9d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.193.tgz"
      sha256 "2fe71f342d0acfef3029949338add159526ee2b293b132826ca541d3b7329829"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.193.tgz"
      sha256 "df0dd05f1014518a4e800c752d00b361303adb953e9991f7709e17bc170e4383"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
