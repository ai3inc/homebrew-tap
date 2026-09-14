# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.228"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.228.tgz"
      sha256 "48bc68f9646b4d2fa138a4565f283d0f6fd7499709b7b40be688ed162564d96b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.228.tgz"
      sha256 "378aa1c326b9dd0f726c186c3996030979022c1e9594a81b3ff3c790e2522919"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.228.tgz"
      sha256 "374dca427dd71c4e06f46093e1f2b724a40125a915a7fab1101b0c8be6334324"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.228.tgz"
      sha256 "219d488ffde23712583dfd9e3e8e45abe57dc18b25bb31f7170192f582158943"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
