# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.192"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.192.tgz"
      sha256 "ddc59cd91f87245b106725c2fa77cd5a1e69acb7dbd4503756e1d8aabb96c34b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.192.tgz"
      sha256 "948cdae9d66cb48f2546737cf292c8dc2bc724956a6da8e83732bb3fbfff8a30"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.192.tgz"
      sha256 "8eab5f67727283d3a545fa9e1d201d729616f3aae8071f252d6211f2a77e85a2"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.192.tgz"
      sha256 "b53e3c0a8426e7a8533727dc3c6ab35d55b956d7bb56d2f4ea7a2363e67a6a05"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
