# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.194"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.194.tgz"
      sha256 "9e30cfbf9f864085c03d64454985c830a306ca005d4e7224b81ff710beebe20c"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.194.tgz"
      sha256 "cb6a4484af77b792d5568c11eab9b3f7faad49b3f517ca46ed1ab8489ac1682c"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.194.tgz"
      sha256 "2b722c98206420f8bf3b028267ab35b4f6ef3c0fc50ae6410281b93061701acf"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.194.tgz"
      sha256 "79d1cda89424e52c53c1f20bd7c0523b5fe7b38a40fc642a3119b314ff3e0644"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
