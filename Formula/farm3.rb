class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.17.0"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.17.0/farm3-darwin-arm64.tar.gz"
      sha256 "db39d37d92990ea809cb98e6e1795c7997af459d78f99c4e1d67a02013540263"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.17.0/farm3-darwin-amd64.tar.gz"
      sha256 "50d5150a9530e9946685315e64595550a817788fbd9d84d2eb97e0577d78ad80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.17.0/farm3-linux-arm64.tar.gz"
      sha256 "aa3418b2ec43b39ca680c43948216a049e63a8ad80a5243d169cfd5b664da460"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.17.0/farm3-linux-amd64.tar.gz"
      sha256 "efc8cade1ac77fc291e093972b2c4383643b996048a013949e9fdb63544a5a64"
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
