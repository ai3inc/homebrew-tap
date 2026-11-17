# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.7.tgz"
      sha256 "ffe1990ff2fcce56c54600ca11ced991785904b030e1f59e398fc77e51c88b7d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.7.tgz"
      sha256 "b81caa9cc6cdca0cef052c8c283f0846784e17d9a31369811b0c5728b02ef95d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.7.tgz"
      sha256 "c01b81ba3dc3318c191f83e6f52ac32e8845fe63a5719207b13ea634b8d5fd13"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.7.tgz"
      sha256 "092b2600179dc5c34f8dd2cd5ea6a515731c344573a7a214b22daa50d5cec9f0"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
