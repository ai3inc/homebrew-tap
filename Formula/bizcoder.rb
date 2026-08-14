# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.186"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.186.tgz"
      sha256 "8911fc4a9ef2af528c0ead2a37ed0c3057f60b13901bb8c6a96712044205aa41"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.186.tgz"
      sha256 "30e948189dee2fb18bb43bc9b52a2abe44577051905d495469f6bf2b051a7856"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.186.tgz"
      sha256 "c33789c1c4e63b34daacae54e3f5ab489662ece85583ede2eeaaaa8d3657edb9"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.186.tgz"
      sha256 "ac53ca24c9dc8fc5b18c5cea20f9bf772eedb3c76842a9b01c2091b41c0550e4"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
