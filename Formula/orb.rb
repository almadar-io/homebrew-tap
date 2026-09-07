class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "4.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.0/orb-darwin-x64.tar.gz"
      sha256 "1ebdb2a54d67690df4b1b47ab388ee54ff973e01cfa460db84772c27409ad0bc"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.0/orb-darwin-arm64.tar.gz"
      sha256 "4d5226350e35a5dd925069e0b5a25a5d51bf675df92cbc2b0f894b9b3096d6a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.0/orb-linux-x64.tar.gz"
      sha256 "ee3fe8a6f1a2eb5610ae2f22a6630b025a8c92578764f12f2bed33d0dd92d068"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.0/orb-linux-arm64.tar.gz"
      sha256 "c0200aa8b2e358ca7150f7f1de62224a721c39a9dfcfe78e60af88f929982c36"
    end
  end

  def install
    bin.install "orb"
    # Install shell templates
    (lib/"orb/shells").install Dir["shells/*"] if Dir.exist?("shells")
  end

  test do
    assert_match "orb", shell_output("#{bin}/orb --help")
  end
end
