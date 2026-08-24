# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.197"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.197.tgz"
      sha256 "efa8660b93b37b99adf06ded4e039f3eb0df2916c43ca4b805508e6535a8df87"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.197.tgz"
      sha256 "ce79bf1cc70135237c4a0146f885ed39603a2d746a3fe19279a767fe94cf0d76"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.197.tgz"
      sha256 "2f829b90b3dbd218aae3165407fd637f43c01a5bc891a1360c0d42ccbbed2049"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.197.tgz"
      sha256 "f115d18acdc411c185c3e50a025c7ee96919aa9d0df677272d91e16afb68bf1e"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
