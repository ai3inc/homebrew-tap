# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.162"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.162.tgz"
      sha256 "25be923b6cc1b519c95176c44c31196bf7d95c83330e90e715519d0d2389dd01"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.162.tgz"
      sha256 "9204f7f52dd51645a7ac4440b5dc07fa09b80a4aa1385303c036e758e56183e1"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.162.tgz"
      sha256 "d3a52e7bfcc7d52451639f63b0e0ae7a442a1a1c928c3f4339b95903f331ec9e"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.162.tgz"
      sha256 "5d4712b508ac3107bec286287440e96fd72ee75df23228e686d5b4550839b7a5"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
