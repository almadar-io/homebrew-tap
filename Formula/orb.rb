class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "4.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.8.0/orb-darwin-x64.tar.gz"
      sha256 "726bf3a1be8515547aeee40252264799eed5933072ff26d5511c82aff8566baa"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.8.0/orb-darwin-arm64.tar.gz"
      sha256 "cf134f23575a09c9ad989ee3af36bf618e7bdc1dba7cd26ccf50134ede8f0906"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.8.0/orb-linux-x64.tar.gz"
      sha256 "b30df45f9a6d7076c7dda2cec816c367f9f4fd1f4011ed135a7c013abf1b63b2"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.8.0/orb-linux-arm64.tar.gz"
      sha256 "4b25da246a4e813298749440482116bcea90579bbe4a1103df8e0b53ca4d3861"
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
