class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.2.0/orb-darwin-x64.tar.gz"
      sha256 "fcfc0f664dae55eeca3adcbecec6356f29e64dfbbeff5eae85a8db813f1b537b"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.2.0/orb-darwin-arm64.tar.gz"
      sha256 "5ac81a629864b1efb1916b46c7cbe69375fb5f7ea7b0e51d984d6d9dbaddc17d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.2.0/orb-linux-x64.tar.gz"
      sha256 "495ab01e2759ce5a34e55d7836cfdaf1542853e2df8d8db53e14b6944d45dfdd"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.2.0/orb-linux-arm64.tar.gz"
      sha256 "e745b89750408d40eb2480f64ad895ca6efd2ac17e236c1c6be1e6330416da37"
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
