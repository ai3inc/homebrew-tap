# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.182"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.182.tgz"
      sha256 "470ba352f7cc845572bbb971456db57c88f1a61686cc4feb5de593f27fbe770c"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.182.tgz"
      sha256 "a8b44ce11b977bd4af0ccdbff73302519d09483e3a8755cbdefa7eb1f1b0f8d0"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.182.tgz"
      sha256 "ddaa39d9f26db59d72e9b5a79ed5fd758ed9266c0a7561c0fd85f75048920176"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.182.tgz"
      sha256 "ed288645bccff5a2ea8742fe06d289e4f59eea868d634ebbd679aaaf886aea76"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
