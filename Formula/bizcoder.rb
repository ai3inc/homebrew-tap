# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.231"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.231.tgz"
      sha256 "217dfb6786729f3e8503a6c4f39e385113d9ba785814377781acef8ccd1272d7"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.231.tgz"
      sha256 "5c9dd4d00be7ca7e488f8e7ee980c3f7ecf206b618da0179766b36933bdf6ab6"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.231.tgz"
      sha256 "ed495aedc80f1e7209f8fff24a94576c25005ee9f33a917a786f7f4bf5996b05"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.231.tgz"
      sha256 "5aef99607b06518e620a0f00329007b625f083c49798d8454d372e780a5b51eb"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
