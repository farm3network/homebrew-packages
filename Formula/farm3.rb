class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.21.0"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.21.0/farm3-darwin-arm64.tar.gz"
      sha256 "cb961cdf9fa2869a8258ac730990e5cd0fab746b8ed94e7d098b4cf6fa90e978"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.21.0/farm3-darwin-amd64.tar.gz"
      sha256 "0dfc0c2c13c78d2f250d05dc9ccaf496bb70fcba81f211295831d7d3f23f87e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.21.0/farm3-linux-arm64.tar.gz"
      sha256 "abda748d0799ffc8ec536c7bb78b642917c85d2255d9f09330292e3e2b6a6aa6"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.21.0/farm3-linux-amd64.tar.gz"
      sha256 "da8c55523f0649893b887bdf1ed7ecaf844371a941c02708eeb9eb300c2d8cf9"
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
