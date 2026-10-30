# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.247"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.247.tgz"
      sha256 "fb414dd9b2b98019e94743497e2d03777ea9fd652c2fcfabb93fafdce6a98bff"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.247.tgz"
      sha256 "f613c13c00681cb9d50f4443ac4c6d1eeb37f5109073ef135b6e325d049f4e34"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.247.tgz"
      sha256 "7d9c14bf172b18dcd8fc368293c12fc81440a9724abf81f710543dcc14506df6"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.247.tgz"
      sha256 "2892ad8a09d7c12ac9c6e261085d4f0ee3abc8f5233760526e10ce8eb7aea70b"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
