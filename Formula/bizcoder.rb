# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.164"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.164.tgz"
      sha256 "957d2bbe50865ca173527e4bad25e7ea858a6545d8b8dc0efc965224c015e550"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.164.tgz"
      sha256 "15a72582046a3418c5111f7519bd53541228251cc25d61d88c8dd849591628a1"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.164.tgz"
      sha256 "6053a96a03dc4969108a8455179fc7c5fe1246afb25bab44a3abc1194b72e945"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.164.tgz"
      sha256 "50ccfd4509848ca685650e05af64ada05d8faa5e5c5269836e33174373d08bc7"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
