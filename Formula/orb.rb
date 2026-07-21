class Orb < Formula
  desc "Compile Orbital schemas to full-stack applications"
  homepage "https://orb.almadar.io"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.0.0/orb-darwin-x64.tar.gz"
      sha256 "4aefae12d822708ad0562d7981f1b3e43a54a32b24a237be4ae28e97c7a72b6f"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.0.0/orb-darwin-arm64.tar.gz"
      sha256 "457afcb5fb6cb458f6d50accf5c46c6e4d517a6a2f2faf7369cc6df7a0fe8ff8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/almadar-io/orb/releases/download/v3.0.0/orb-linux-x64.tar.gz"
      sha256 "336486755207b66eeaf6eadde119d73bbe8660ee2ba80b07093f120c28d44b1f"
    end
    on_arm do
      url "https://github.com/almadar-io/orb/releases/download/v3.0.0/orb-linux-arm64.tar.gz"
      sha256 "3790afacaa528d04d799eaece4cbf43d4eb64bc85cc6f1848d4feaf8090ff194"
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
