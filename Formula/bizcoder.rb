# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.156"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.156.tgz"
      sha256 "a4420fcf7bd91cba7afc8567c250ecd21b66b19773b59700563a540b6bef73b2"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.156.tgz"
      sha256 "75f8d192be359c5c441ec942c8475519fc16adab635d9bceb390c79859131b6d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.156.tgz"
      sha256 "f204bc0bcdf17b353050b85f98faf0a48f94c948bf8a9b2056dcfdbdc11d7106"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.156.tgz"
      sha256 "1d54bef478b8c2459c76fc9b0bacba635054f4f1a513152984f8a99f2571ad5e"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
