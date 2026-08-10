# Generated file — do not edit by hand.
# Generator: scripts/build-formula.mjs   Updater: .github/workflows/sync.yml
class Bizcoder < Formula
  desc "Business AI coding agent"
  homepage "https://bizcoder.ai"
  version "0.3.175"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-darwin-arm64/-/bizcoder-darwin-arm64-0.3.175.tgz"
      sha256 "8e21b614d67461b2c0334284774587262b2ca68aeb05bd314d65221197e5b117"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-darwin-x64/-/bizcoder-darwin-x64-0.3.175.tgz"
      sha256 "8bc42e8ef913f8cdd62c3fb3495a45d3799b91b4fe96c91cd4bc462f521c3949"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/bizcoder-linux-arm64/-/bizcoder-linux-arm64-0.3.175.tgz"
      sha256 "dd4e272c58a2e9b3c256293e492448b25f20e0de2619413019ae2a42435c25de"
    end
    on_intel do
      url "https://registry.npmjs.org/bizcoder-linux-x64/-/bizcoder-linux-x64-0.3.175.tgz"
      sha256 "fefbe0d44eb5fdb669e64ab270a9986081bbc294be351d19e9fc4c3a4e691198"
    end
  end

  def install
    bin.install "bin/bizcoder"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bizcoder --version")
  end
end
