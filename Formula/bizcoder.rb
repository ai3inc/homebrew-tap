# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.236"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.236.tgz"
      sha256 "3b0ac5ec844d0dfdde104654f705e1d9d0c7673c12b7d655a9195f924aba26eb"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.236.tgz"
      sha256 "bdba088170c50154f073906c828731a27a54e031c8d920838c465b110a1ebaad"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.236.tgz"
      sha256 "e0c7cf239da89b8737e92cb2f2c76667ed08c33c64d363ae122f8ae1cbfc7640"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.236.tgz"
      sha256 "7762e184d29bdcd991cf953d6b9a5c00186f416da910410ac0dc317ee9292d42"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
