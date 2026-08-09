class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.4.0/orb-darwin-x64.tar.gz"
      sha256 "2ee48d8195bac1263b57ac6c136d845eb0fac9f62ed7644a4868f4399e81190c"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.4.0/orb-darwin-arm64.tar.gz"
      sha256 "8a24eb8a32cbb7a7973f3bb625ae434becc42296ed2aaaabe578133dc4fb23f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.4.0/orb-linux-x64.tar.gz"
      sha256 "015680124b90924fa316504723084b615935d1a151a7c7c23f8c8d366e93b2d4"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.4.0/orb-linux-arm64.tar.gz"
      sha256 "64994dff62f39aeffa99cb24ba2ee38c2d4271fe2c370ed6bcbc24cc48886f3a"
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
