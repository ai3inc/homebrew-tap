# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.4.9.tgz"
      sha256 "3a403a35aa3de8594479a5bf6bc2dca77093d9067b68c9db5bf9f6da6660dbe1"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.4.9.tgz"
      sha256 "33f25667649ccd2786ec8e331e64b2545cbeb12b6c8adfc9a4e74156f3742afb"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.4.9.tgz"
      sha256 "5f2a578bdd2e45b02e96d0f865629e5f98f004d2e247fc09baf4ebd7fb27a6ec"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.4.9.tgz"
      sha256 "1a338157ee52198b59f0a5f2a8a4694e2cf6959b9988a36f85f3e5be508d9cde"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
