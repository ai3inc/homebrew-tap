# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.189"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.189.tgz"
      sha256 "220bd1144e622e8cdac116eeac816925dadf53c9ad165b0b9123857dd02be92e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.189.tgz"
      sha256 "23f2b59aacefe3a1a012230cdddd3126443e9b603476f201a106f2e99e50998b"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.189.tgz"
      sha256 "a19435266996c161899975067138ac8113aa3d72a3b38cd6ca58de3a42070396"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.189.tgz"
      sha256 "8593c15935482a3cc9c2c6a04b4cf29f0ac03b9c5b8781dc79fb7f2f0be984be"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
