class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.19.0"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.19.0/farm3-darwin-arm64.tar.gz"
      sha256 "be7d5aedff3bd9bd880bcc1271711a7aa6b99d36715ecb8e509cdb99a3b8a102"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.19.0/farm3-darwin-amd64.tar.gz"
      sha256 "ddefbc3eb51666f42c04162d24e160c3f80d5805a95873bfed8eb30c8f7e4b52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.19.0/farm3-linux-arm64.tar.gz"
      sha256 "9c28f0e5ec8b3d3a80ee99e325146731e0d090ba4e17df978d65df01432e659c"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.19.0/farm3-linux-amd64.tar.gz"
      sha256 "539929ce58f9ae69741c09ce04e23edbf37e177de4aa8d1f28e36fdfef216784"
    end
  end

  def install
    bin.install "farm3"
    bin.install "farm3-provider"
    bin.install "farm3-consumer"
  end

  test do
    system "#{bin}/farm3", "run", "provider", "-h"
  end
end
