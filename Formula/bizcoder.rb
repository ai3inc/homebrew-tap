# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.225"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.225.tgz"
      sha256 "5b204e28129634122efebce4b87027ce9bb47938c339bc157773aa2351b01175"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.225.tgz"
      sha256 "eccb3cb57f5a6bc7d4a3b7aa220d3ff154f5d678231a940b10029e5ce24cf24d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.225.tgz"
      sha256 "f3a67805071a077eaf7ebb804e8aeb507674ca2e0a7c52f8e1c77d37791f744d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.225.tgz"
      sha256 "7e6fadeab04837cadb155f97ae9ca7b3bc81a87a739a99aaddbba29f469ce0fd"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
