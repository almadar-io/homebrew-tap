class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.5.0/orb-darwin-x64.tar.gz"
      sha256 "f2909f7a863c11e67a97780c7391854a3f174231eaa6795614446053d44f99eb"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.5.0/orb-darwin-arm64.tar.gz"
      sha256 "aec1ea9d3c1c0d1659d07181084551d6d1bf61fc8f59fb71716cd49b2367813b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.5.0/orb-linux-x64.tar.gz"
      sha256 "8d2f289810749012fd2aae50d987fa7a9c67f0872e6f46aa1cf6bc5c5f769ee0"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.5.0/orb-linux-arm64.tar.gz"
      sha256 "898d5f3458819c500f7ef1e46a29adb326759ec449fa753670246c97440f6af1"
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
