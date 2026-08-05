# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.163"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.163.tgz"
      sha256 "969573d89b9c33bd1358cc82cc2c4a36bed91e3d216805a47cff2a5b451ffd1f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.163.tgz"
      sha256 "a9efa4c42abc4333e8cfab43ce8d29c2d346b7148cb01366031245fedb1c0703"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.163.tgz"
      sha256 "a068240a771e595f6a59d4e1dff2ffb8a42fafb9e09853812f4d78d6ff0d79cb"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.163.tgz"
      sha256 "d68b4417df155568232da00353675b392a671c4936417fd4269b7c55fba754cd"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
