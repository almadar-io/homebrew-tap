class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "4.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.7.0/orb-darwin-x64.tar.gz"
      sha256 "7fd74f8793320adbb665b8f168e99e376bab39f800fa0535c9e9a45c74c01051"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.7.0/orb-darwin-arm64.tar.gz"
      sha256 "996eecdce46e6b7c57f979453fdfb518fd756a2fb68a1c27012098430bf58f4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v4.7.0/orb-linux-x64.tar.gz"
      sha256 "47ae2585266fd6dba54912b7d808e7617382d150b0d7e652b14e92300f0ba215"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v4.7.0/orb-linux-arm64.tar.gz"
      sha256 "aaf03cf8b99251677c101c7ecd4e6e5a2d61fa8a5c3452efe1476cfcaca140ef"
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
