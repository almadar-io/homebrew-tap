class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "4.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.2/orb-darwin-x64.tar.gz"
      sha256 "9058a5306c30f370008b6d511b240227581e51dfcdf2d8b84f61e25ee9d3b3cf"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.2/orb-darwin-arm64.tar.gz"
      sha256 "710fae2e8080adaef5e252110d979bf59a1e2d89629a91bb239bcc00f70cb5a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.2/orb-linux-x64.tar.gz"
      sha256 "e2417956ecee988ef4a880fcfaad40da3a117ef9931f6700bf0e90da79f4e48e"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.0.2/orb-linux-arm64.tar.gz"
      sha256 "ef04ddbb9ff13b86fcd5f6cec4b567380dd8c79c7256476a7e0adef565079c68"
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
