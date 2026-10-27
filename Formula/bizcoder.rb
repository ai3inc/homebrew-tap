# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.241"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.241.tgz"
      sha256 "48a8a6382feb82a22b652f8d3778991d972d9d767d74d855c07103da11eb5156"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.241.tgz"
      sha256 "bea4a0e621b69932d0b2a408912372548ebd93d21078d551fe8ce0c804c7245d"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.241.tgz"
      sha256 "de4d6f08ee92558dd6dedf4c87aa5bd99f63f6976edee8a9608d10aa6c51b1f4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.241.tgz"
      sha256 "85940f6a278016165a0401ef095b657c20353cdc386cadd1665c759b7d936f6d"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
