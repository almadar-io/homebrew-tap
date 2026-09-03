class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.8.0/orb-darwin-x64.tar.gz"
      sha256 "207e0cefd055629cb2026056b8b823569b6d515ef5dd344b6de0c00efabade54"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.8.0/orb-darwin-arm64.tar.gz"
      sha256 "b147284b228d6d0d4a1b3db45f196c35c0cc3d45f82e755b15bba245223b6d52"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.8.0/orb-linux-x64.tar.gz"
      sha256 "084019f2780d21ee8e6899da4b3b5d9f3bb4ca1a9c13e0653d58154d054f27f3"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.8.0/orb-linux-arm64.tar.gz"
      sha256 "6b83ece0ccef1df76722bd9a13999300bede38320b72503a665c0a8469ccae5f"
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
