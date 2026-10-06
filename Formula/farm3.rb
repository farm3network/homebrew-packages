class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.18.0"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.18.0/farm3-darwin-arm64.tar.gz"
      sha256 "52df9e92634cbb68399009e1b6b632f4db6d0e71f16d0b72e3fbaa3d1b71bb9f"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.18.0/farm3-darwin-amd64.tar.gz"
      sha256 "845676ccb76a4c2490e8623d55b118adfdedd8a28d5374262db026362317611e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.18.0/farm3-linux-arm64.tar.gz"
      sha256 "d99ed75ed2b8a174cc269d1e65bec5708246462a40eb4f2a0715725af6c0aba9"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.18.0/farm3-linux-amd64.tar.gz"
      sha256 "c8eb96490a6452a8c840c15998b4eabe39fe9d39564f5fb96ee794a42ed04cad"
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
