class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "4.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.9.0/orb-darwin-x64.tar.gz"
      sha256 "221b5c1d06ebedb1aa1a0ab8f73a080f1d77e5c83328449a37838603612f61bc"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.9.0/orb-darwin-arm64.tar.gz"
      sha256 "4e64fcc06d2f28970848fe1b2fa6c51bbe1e8d2ea4109d91ba1190e5abd4923c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.9.0/orb-linux-x64.tar.gz"
      sha256 "dff515f9ac25c82ca7eb9e77f75d04bb06adb7dc846418f7f5dbd1056e5cd377"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.9.0/orb-linux-arm64.tar.gz"
      sha256 "a4221adf58e69102c35804b822b0d9e9ff1b5ddef4efc9cdb8817d3807df7583"
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
