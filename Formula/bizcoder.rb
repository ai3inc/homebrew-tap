# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.157"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.157.tgz"
      sha256 "dba28a5ce7e5c6e5eb9cf1ec57ffdee6944403515cce898201600eaef5ea4e99"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.157.tgz"
      sha256 "2540b94764f2cf06dfa5d0e6ad413aeb8f44f3084ed72b0dbb3ab98c2440550f"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.157.tgz"
      sha256 "f0e754c8b98f6b87b10cba005fa4799380f7b9058ceb84cde824f3564d7800b5"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.157.tgz"
      sha256 "4dbfb7e28b78788758d0336f0f7e2fa959cad2ecaab26c011c4974ef4db08353"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
