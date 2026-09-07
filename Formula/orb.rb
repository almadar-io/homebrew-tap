class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "4.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.1/orb-darwin-x64.tar.gz"
      sha256 "59c00569892fdb7753c6a185e7db1f423d9872aa7c1e3e0eaf3a78d98a87e192"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.1/orb-darwin-arm64.tar.gz"
      sha256 "8aa92ac0d162307436ec2a050424331e479c51eac4a3d293efc2b9be17f62671"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.1/orb-linux-x64.tar.gz"
      sha256 "9206d297351a1be27f8d695d372c5ec44409c0136dedf1d5ad054c0f24c5e635"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.1/orb-linux-arm64.tar.gz"
      sha256 "967d8156aa84ee37530dd4460dd034c58515a01b78b30ffb18ed4389c5ed0696"
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
