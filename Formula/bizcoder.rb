# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.171"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.171.tgz"
      sha256 "e7cd9d8b75e9dff777f9e02688948bc331394e95a87839277aa9ff1b070a8e7f"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.171.tgz"
      sha256 "437599fdc611b0784b4ec4404b79b70216b1b1bfd1da4532df4c055061ba2e77"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.171.tgz"
      sha256 "af719b2c69db7538d6d0cec223a806cbdf45d321f88cebeb7518d0780359293d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.171.tgz"
      sha256 "e89ef7f540d6f834521a5fdc5a12358ffd2af922bd65758d3d2816fe29af2140"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
