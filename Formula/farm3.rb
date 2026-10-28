class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.20.0"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.20.0/farm3-darwin-arm64.tar.gz"
      sha256 "beed596c3f263819e0b926ee521625e1037cad214ef0cca0f3ebb2a71a75d18a"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.20.0/farm3-darwin-amd64.tar.gz"
      sha256 "953a802db119727105e0d12945f784f9ecf16882b3247c9bb7269adfabf934e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.20.0/farm3-linux-arm64.tar.gz"
      sha256 "0b82677468b1aac5c45fde249df9632b4e7df78c3eabe56af969dc99da58bf9c"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.20.0/farm3-linux-amd64.tar.gz"
      sha256 "eda10f21273516d7fa84e631a490ddae3044bfd7c249663e7ef607b243deb991"
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
