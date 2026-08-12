# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.183"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.183.tgz"
      sha256 "57eb682bc379f4995557b6af00da569492c25fd7eab9e8acd32ad29c22bc7db7"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.183.tgz"
      sha256 "7730dc7a3a5c1aa34d811b38e17edcfd9e2f92fb70b0324b7ffced529c58e149"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.183.tgz"
      sha256 "7ff13dd0d9eabcfd756d129ef62960c501a897f8f93c4547d4aa83f631bce147"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.183.tgz"
      sha256 "1b338b1877a39632008db07dd2db85f6b0ec0f6f2bc6e203258474fa05c9988a"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
