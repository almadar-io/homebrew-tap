class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.1.0/orb-darwin-x64.tar.gz"
      sha256 "be14d4f285e1e06d0e4a1214b21b3c601752c90dbad1c44f1c21a89f860f1ef5"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.1.0/orb-darwin-arm64.tar.gz"
      sha256 "fc0ed806c8e7e86def54165b392c8bf4938f4f7d4e3aa88c800c1c2df7af9a51"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.1.0/orb-linux-x64.tar.gz"
      sha256 "2a9a483cc9f3e7481619b9879b8b4c1cb2855a7a9d60a5886065c82682ce2742"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.1.0/orb-linux-arm64.tar.gz"
      sha256 "a88f07fb721aef3157598b2f926d09ee8646e2266d43a002eb68ae841bf3e662"
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
