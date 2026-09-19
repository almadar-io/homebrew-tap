class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "4.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.10.0/orb-darwin-x64.tar.gz"
      sha256 "7ef35ed1fdbdb1825e0b3bb790e7b9f9071e308b9d8740b52b488310a74a7386"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.10.0/orb-darwin-arm64.tar.gz"
      sha256 "f6528facdd485ce187242907da35f037c240586972b6af942965d458912b739c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.10.0/orb-linux-x64.tar.gz"
      sha256 "86d0c35367bdc1c5aac691b14ec388e1757cb8d476c1bf7609474599833261aa"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.10.0/orb-linux-arm64.tar.gz"
      sha256 "b8bece6c236753c918f44e83e26b7d22a6fb058bed456d857a6339506b07c766"
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
