# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.242"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.242.tgz"
      sha256 "854b825cfd2b8c4742731cabcb0e2d76425e34680241649cb4002d06a69c7ab4"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.242.tgz"
      sha256 "fec9334d5733f76e86f8bef7ebc97e970984cff1645c495cf8d673c238568c86"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.242.tgz"
      sha256 "05c7df3d480494f861b78f8243aeaadaff3e6d5779641b47aa3795ae72f91e99"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.242.tgz"
      sha256 "4b173bb5035d68b4186328307a98203c14a145b49642534c3e8ec391c483cc32"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
