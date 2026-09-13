# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.226"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.226.tgz"
      sha256 "3bf86b04017825dc02c286e291d82e0b93096c173f1a75fccc21d317b68f6252"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.226.tgz"
      sha256 "d1e7a0230df7ed1db735217dfd892eead8b23f015a5f01a16244ef8e3757f1c4"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.226.tgz"
      sha256 "f438f71ed8b50368e645c9dd9828de93806a5324406b176bfec4b0933795411d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.226.tgz"
      sha256 "9e21fbc6590667f1b55b83d2e0acbafba9dab8584f610d2f8b728adc5e18023e"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
