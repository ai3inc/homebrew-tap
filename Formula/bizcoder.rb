# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.227"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.227.tgz"
      sha256 "9ac6ad90fc259d5ded5c967dde7f7197dde38664c3f2a258894479067a8ca649"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.227.tgz"
      sha256 "c949c8afba8421b2f1286fd3a60d6ae13ef31d98ffaa465fc8cce59ed42d03eb"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.227.tgz"
      sha256 "c48ec36506341e65ee8889de3e824a89fb73f502dcc6b8f155ce771b56bfa474"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.227.tgz"
      sha256 "b24f32f3a8ce2b3774e6445fff4b88fdcc96ba0c036b353d51888440cd074b97"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
