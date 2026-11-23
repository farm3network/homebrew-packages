class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.22.2"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.22.2/farm3-darwin-arm64.tar.gz"
      sha256 "8cd274b1db9a971a8d367fb4fe58e3e5559205041bd512ecba17054e31a5e7a3"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.22.2/farm3-darwin-amd64.tar.gz"
      sha256 "8cd92419735e3f15090dc395738fb44636a8e3320e2ea64df2270765f738109b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.22.2/farm3-linux-arm64.tar.gz"
      sha256 "6a9fbbaf92d26e0dd86c2ea9faf8b7cf1194a385b6c02cbb8a2090edd63d4bd0"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.22.2/farm3-linux-amd64.tar.gz"
      sha256 "e7477f5154911ecbf9fa030fedcd67abe2c30bc5f29e4e1d2294eba014bcd8c7"
    end
  end

  def install
    bin.install "farm3"
    bin.install "farm3-provider"
    bin.install "farm3-consumer"
  end

  def caveats
    <<~EOS
      Check what this machine and each device need before sharing:
        farm3 doctor

      Android devices need Android platform tools (adb):
        brew install android-platform-tools      # macOS
        sudo apt install android-tools-adb       # Debian/Ubuntu
      iPhones and iPads need go-ios:
        brew install danielpaulus/go-ios/go-ios

      Every check: https://github.com/farm3network/adapter/blob/main/docs/HOST_PRECHECK.md
    EOS
  end

  test do
    system "#{bin}/farm3", "run", "provider", "-h"
  end
end
