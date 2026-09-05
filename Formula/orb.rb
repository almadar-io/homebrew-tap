class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.10.0/orb-darwin-x64.tar.gz"
      sha256 "5e3e3e1fcb4d0cf63574af054ee2f9ac9b7ce52c6b99d84b343f8b6299153fb0"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.10.0/orb-darwin-arm64.tar.gz"
      sha256 "f15839e4ad946283eeb6f75bceb5904aa67d1e42eae146214ddf8b77f247231f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.10.0/orb-linux-x64.tar.gz"
      sha256 "217ae09da3a7ed89a8917296da549330706e40a0b8206e2b9fb887e474e68638"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.10.0/orb-linux-arm64.tar.gz"
      sha256 "413f36f544f82dfad23295789f350e387cecb0d485f3b9eb9e25bf77c0ae736e"
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
