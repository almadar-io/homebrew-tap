class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.11.0/orb-darwin-x64.tar.gz"
      sha256 "a9f5d8bed713d0bd91bf76385185f7f273a4c8f8e8d3cc5c4620337a3a911952"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.11.0/orb-darwin-arm64.tar.gz"
      sha256 "a17e05a7df6325512bd618e9f15acb49a97197042cd744ab7ea0d29015155530"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.11.0/orb-linux-x64.tar.gz"
      sha256 "d681fcaf9699bdcc04ecc35fa49b0e899079323b77e97dba5e6b4026f6fb3359"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.11.0/orb-linux-arm64.tar.gz"
      sha256 "621652a4bbb22b6f0c6bbef4e644d7feb13872530bdd6aeb3c7cb085f03a20ec"
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
