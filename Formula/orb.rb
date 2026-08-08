class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.3.0/orb-darwin-x64.tar.gz"
      sha256 "4033af081261948520a8508ed60761864682a589f6ae767ad37e0eee1b185fee"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.3.0/orb-darwin-arm64.tar.gz"
      sha256 "6a17d93afa3ec315afb8b142988dc3ea0a78fcc64c7f0dd20853cd407b03bad5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.3.0/orb-linux-x64.tar.gz"
      sha256 "d493709bf33ddd4d5f1384158f6d4ec2b9a636a973e785489dca7cd1b08e4d2e"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.3.0/orb-linux-arm64.tar.gz"
      sha256 "93536598fb22be67568f15a6c50ad43775e2ab642c5da924afb977a2e75247b2"
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
