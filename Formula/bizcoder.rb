# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.243"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.243.tgz"
      sha256 "f868ff0c00aa45dcca6d48213f9110220041aca4e249cbf3bc838af4d9bc7d7f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.243.tgz"
      sha256 "0103085aab7b68b3ca4663a119cd9ca1ba5686a8bf772f1c5fb1033bec219d0c"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.243.tgz"
      sha256 "daf60625834c22af97ec471c7a2cd13075483508e51db9ad3c7623656251ee85"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.243.tgz"
      sha256 "0f5dd274df78e72e111da6e09532d15b12191300c740b334b38f8276fff967ec"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
