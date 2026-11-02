# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.250"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.250.tgz"
      sha256 "55b63eb2dd071008b5dba5d934eb9938b4078be62854abd288d52abedaa3c6a6"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.250.tgz"
      sha256 "e4343c47fc54d800ac991ae14dadaa85026c0ca5b027d4c336afdc34b102423a"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.250.tgz"
      sha256 "b065b09f25b3eb565e08366b85d1680f7b8ffe765b171e94acca58a712b807d7"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.250.tgz"
      sha256 "1a1091aec6c93480bc95e7e95856b49dd457787df06064922975a3410efb5bd9"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
