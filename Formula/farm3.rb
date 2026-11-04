class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.22.0"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.22.0/farm3-darwin-arm64.tar.gz"
      sha256 "f2a77a2fad4974957da26762f946546459dace2cf76c6e7d21bc2052889c861d"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.22.0/farm3-darwin-amd64.tar.gz"
      sha256 "531d3e71d640e48846b44ac4d5ecc57ebca0becf83d1d7c68ec292cb98173e6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.22.0/farm3-linux-arm64.tar.gz"
      sha256 "3cdbd174d3c906a1044983fd624fd5e72973a2788f4f88f30c4bc04dfea27e5c"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.22.0/farm3-linux-amd64.tar.gz"
      sha256 "f99dc13f671a071724fea8b8b0ebc545859eed83399bc170267d9b0cd247ddaa"
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
