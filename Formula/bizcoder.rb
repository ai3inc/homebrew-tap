# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.191"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.191.tgz"
      sha256 "3a7a5594c445ec2038e2aac5d5b1775066e5a0ae086efbfd18cdfd8d5bef2580"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.191.tgz"
      sha256 "91d979d3a53accb18c81641f75a7828b5d279de998117db4b166b44ee968db89"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.191.tgz"
      sha256 "d146cb283df6540c1b68374e7b1a7af2e2f5f815e3639899a45488147c272d54"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.191.tgz"
      sha256 "d330c008530cd435701cc80cb135729dc5463e5260e6689636437c6b74336c2a"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
