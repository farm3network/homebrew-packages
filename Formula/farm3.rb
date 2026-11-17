class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.22.1"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.22.1/farm3-darwin-arm64.tar.gz"
      sha256 "e15f2ca5ae3a292f8b2209f96eba6c3eb7da85b08cedd909995905cdde2d89a7"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.22.1/farm3-darwin-amd64.tar.gz"
      sha256 "69527444141d5c00a3f7068a5389980a1f502d3ceb1f2f782fb53a3c639682ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.22.1/farm3-linux-arm64.tar.gz"
      sha256 "306c899117f2e898c17eb54ee886ee5584311b6c1772c3e2ff5b470eb32975b5"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.22.1/farm3-linux-amd64.tar.gz"
      sha256 "7e66ba33f7ee4664a0a1e11825053aab2a64805e3b481c8bcc4e89c8e44c53f7"
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
