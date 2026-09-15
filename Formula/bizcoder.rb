# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.229"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.229.tgz"
      sha256 "1baa891a5b02d61d6c60b576d1f6c14dd21e7ccc60ac5cb42402992804021aaf"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.229.tgz"
      sha256 "d2123fe0ec1853cfdabfb3fbff986c5b57e1b876b4bac1fa8e246a3689df220c"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.229.tgz"
      sha256 "69af394c9b29a36589f01f923643fe5471e12b3eacb0452f20eb2b1a653a608f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.229.tgz"
      sha256 "f6979d78c5f09b081869dca416e711177c93dd2f87fdf87b8b8ecf19988c10f5"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
