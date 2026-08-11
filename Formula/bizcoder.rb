# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.177"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.177.tgz"
      sha256 "007dc6e3e643a8b030e9c7e49aea2dcf72f964aeb4c228abb81fb84a58d31682"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.177.tgz"
      sha256 "c47f351503e70f32232ea16f78df7a537b5d234f74d801ccd4f82597c4117265"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.177.tgz"
      sha256 "355f3094c4b1489a4a828abcc56425f779ab10dc8cf7fe2b24a6f093c67c6708"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.177.tgz"
      sha256 "936f8264b2ee4163252d84e2bd1dde21f2a7cc4287474bc8cad8caeea9d06617"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
