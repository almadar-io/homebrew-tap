class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "2.47.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v2.47.1/orb-darwin-x64.tar.gz"
      sha256 "36f4515aa38b35088ae45f7bc77a02fc8e175d63b7defc40b562914755b80cfc"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v2.47.1/orb-darwin-arm64.tar.gz"
      sha256 "b14d8b100b38b2ecdbd04b38435c42c36f17b4c8dcbd2ed8da17e86bd07e16db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v2.47.1/orb-linux-x64.tar.gz"
      sha256 "1d9c1186c0f6b61ddff711939c7d37491b6f9e13f678397cecb2ed39284f7c76"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v2.47.1/orb-linux-arm64.tar.gz"
      sha256 "422e94a7aabeac713ad22c6fef3524c234069a35ea4ef7d9755717164ed141a7"
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
