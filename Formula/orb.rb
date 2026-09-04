class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.9.0/orb-darwin-x64.tar.gz"
      sha256 "32756f1fa01add6ac547e56a771ed48400f61592d849c50eb5e781c41074313b"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.9.0/orb-darwin-arm64.tar.gz"
      sha256 "4c453b9a80a3c7b516030456aad118796500f34d0216de914a210b171b8eb168"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.9.0/orb-linux-x64.tar.gz"
      sha256 "cefabc21e5bab9879d8b13c76d791ce47cf7f18cdf70626008e5add1d83a7efd"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.9.0/orb-linux-arm64.tar.gz"
      sha256 "58a4e6963deb433de5425d4ac30a957fa6fbe7a63e4a7f14066d4bde354c36fe"
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
