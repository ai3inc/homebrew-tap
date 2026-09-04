# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.205"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.205.tgz"
      sha256 "c34de3d524e742d9bea0066438c29cfa574679f312c39eb3989b97533f2be41b"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.205.tgz"
      sha256 "e2e8638d712d96157de53567f18508159f6809ccbb8bb88605fc1481ddde6fd9"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.205.tgz"
      sha256 "bb64f436708016493f6e8ce3c5a583ed538ce5bf20c736a38f5dae6b4d8c943d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.205.tgz"
      sha256 "cdaad75183983a10aede8e54e110e35aa5f8aca2fabe0eed211864beeb70a1a0"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
