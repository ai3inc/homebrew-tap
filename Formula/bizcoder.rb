# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.216"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.216.tgz"
      sha256 "c34e9d1e37b934daedccbfc0d00e400f0371af4ab89cf59548d9f0b83306dae4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.216.tgz"
      sha256 "031ac64e6aa132115954bf3951a8eef4c3e8acd4fd3ea1ff83b8dc11494b79f0"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.216.tgz"
      sha256 "03cbb00ffc40556777f19bc442f92500cf7f58d4cafaeba3cef33642ac492727"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.216.tgz"
      sha256 "c7e89e6946fd283906af4e7613f59141a67377bdc8eaf7a318c9701f0b2278fb"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
