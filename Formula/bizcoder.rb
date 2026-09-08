# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.214"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.214.tgz"
      sha256 "1dee55ec1c4240ebdc1c45cb87ccf056640e37309206b6e2d975aecea95c6f80"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.214.tgz"
      sha256 "d3f1479b2e377f8b46bec9bd3d96a090af4d8f7416b868703d349f9eebfc7b7f"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.214.tgz"
      sha256 "956b2103728e0723d9282b9080e39c21538b3b330ac5ca2e7ce0fb90fb00f4e0"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.214.tgz"
      sha256 "4408fac585d4e6b080899cea8416dec34662bc661172197734ae7e3425a7849a"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
