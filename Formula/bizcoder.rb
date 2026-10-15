# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.238"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.238.tgz"
      sha256 "21efea318afc8f2b93171df07335d46e2bbdf2c4c7c464357f297985ec5a0f9d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.238.tgz"
      sha256 "8613a87d53480f95ee86fa38bdb7e0d88435514725e91665ead001cbdeaf8af4"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.238.tgz"
      sha256 "61b798bde17afd6f40562a01cff249e7c50fe81b8123454119339abcabec684a"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.238.tgz"
      sha256 "3006815be0c611a7314d99181ce01335acb988e768b7f86b30f77badb95a3bfe"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
