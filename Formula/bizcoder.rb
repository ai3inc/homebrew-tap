# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.190"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.190.tgz"
      sha256 "d27ced6edebfa6a9cd79b5d6e65638790b31c7c74b84acfe40996813181e5e9d"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.190.tgz"
      sha256 "2ba6b5193eaf0254b2765566972f36d3dfaefe5edb7fea34643d309f26eb0420"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.190.tgz"
      sha256 "5cc24f89147395f612f7ffcc493c417952a21f7aef927e93e3e63474525172e2"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.190.tgz"
      sha256 "9be465ced15b269dec7f2d70721b642c11ad365912a905a72512633711acebcf"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
