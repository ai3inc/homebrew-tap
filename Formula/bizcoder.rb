# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.230"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.230.tgz"
      sha256 "99a69440c4ce96efff84d81249ec6271348b4bc491de466bb5c0465cfb42d453"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.230.tgz"
      sha256 "02dd89088ac3f7e35273d0f81ce84154f85c2aeef4287c650016e6a77082eb6a"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.230.tgz"
      sha256 "9d996489494257b419338c2bac42aacd9e3c1f7a646caf44ceac92cfea9d8afd"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.230.tgz"
      sha256 "110b310e0c6cd4076b713345738d1d7625e6f0d39001be8e13423ae86db5ff38"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
