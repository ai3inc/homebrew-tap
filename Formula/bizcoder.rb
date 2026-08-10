# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.172"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.172.tgz"
      sha256 "f4caa6584e7b7314023e0323394e89c22c80cebc644138a386e4da5cfe8fc34d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.172.tgz"
      sha256 "ea2889ff3fe80045dd13bf5093184154ea541e16afb97eb34b595dcafe736fa9"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.172.tgz"
      sha256 "fb799e8e30fb220c74ab6e49157eb4651d1a604599369e106383b61ac247e516"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.172.tgz"
      sha256 "3eced71a57f20a48fb0735dbf00492b8eb61d95d84ed6b230366e90cc4d9bcb7"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
