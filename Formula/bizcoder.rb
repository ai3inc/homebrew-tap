# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.245"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.245.tgz"
      sha256 "c4659926ce1594c43c176e898fc045a6b1188f1234ec027153486bdb00b8a4a7"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.245.tgz"
      sha256 "e6e514f8cd612d1e3c6727126ffb20d8a65a0ceb05cc661aac4b8631072c43e1"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.245.tgz"
      sha256 "84fbb7305ae32b7b5424ae088379eae8980bd0c60f72432a2b121558d6f076f7"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.245.tgz"
      sha256 "f190f11d5ddca1eb8107ec819b529e98a462010dab668e886627c9739db6cc67"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
