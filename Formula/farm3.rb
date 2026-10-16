class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.19.0"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.19.0/farm3-darwin-arm64.tar.gz"
      sha256 "ccae17502faa561be732f1648cd8cb29380962b3858fba3213b694848b74482b"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.19.0/farm3-darwin-amd64.tar.gz"
      sha256 "4d6462b5ab71ded264bba99cc9998a7bbdc0661dbad9ae112b4b627d8d563817"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.19.0/farm3-linux-arm64.tar.gz"
      sha256 "f33d2356221134fffc0a2f39b4956bd44d2ff570a4096a48e0ec141ac767bfd7"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.19.0/farm3-linux-amd64.tar.gz"
      sha256 "b11917149a3676c4fe0d9c10fc3d82a575d5b27e7aa4693eb4e6453de24c177a"
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
