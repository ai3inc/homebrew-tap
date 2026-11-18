# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.5.0.tgz"
      sha256 "ef4e6a684d28ce203d2278dbca73a1f60b09a7bc4381c8b123d5266901aa9d19"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.5.0.tgz"
      sha256 "940ea8d2e6376e9975055878f39f03ecdd8adb4a35635ec34d9828288d6000b0"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.5.0.tgz"
      sha256 "d2b19b86fb012fe4a1c77636be43d5a3fb4a409340adc358db27019136e9fc59"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.5.0.tgz"
      sha256 "badeaffb64ad0480cd465e35245e3ec2ab2a17bff8e131cc4126f3035bab46d1"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
