# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.223"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.223.tgz"
      sha256 "f1a607bf0f5daf575c068fa48bbcbd6296b74ef9a69a1f401fd6a05c82f28b08"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.223.tgz"
      sha256 "cab908ff17dce4ccfd48cca664a12f371df22888a5085c03ff07c07408fde441"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.223.tgz"
      sha256 "5a26ed4503ce7b2105af7a38ea102876179ac693a77e623fe541fd402d0d0e27"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.223.tgz"
      sha256 "6b03b0b808c3fba0515e068ab928eeaf3b720fa909ba352096ccea6be42ab655"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
