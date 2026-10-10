# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.235"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.235.tgz"
      sha256 "0927fd12092e27f05a4588764d8b4641479d3068b1f97dd10b8aad98567d4536"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.235.tgz"
      sha256 "b433d3f6ade8b3cbb0d2d04c2faace88aabe3563783b301feb7c5167ad01dc24"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.235.tgz"
      sha256 "49817bd73256d2708f6fa78fe6986d674449cdff1c714d422cecc211d7d54776"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.235.tgz"
      sha256 "6793e57b0160421fafb3eec11b79f825639413bde26ccc075aad9dbebf80e19a"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
