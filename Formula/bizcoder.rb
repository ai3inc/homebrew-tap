# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.198"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.198.tgz"
      sha256 "9b05a77639c3cc7e3826686669962f8c763e09ce02060afa32db71bfd679c3f4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.198.tgz"
      sha256 "fd18bddd9a151cdb8945d9976141939ffd11a543a5f0abb9507c758ab43e6a1d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.198.tgz"
      sha256 "ea280c52dd09f241ad2a4688e4403d9ec4d4ee86eb0074d943d7fa8bb481b765"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.198.tgz"
      sha256 "d8b5bce923b6df4e0213662d51903aee3fd41bbb25ed6756287ddedcbd725e94"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
