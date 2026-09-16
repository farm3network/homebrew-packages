class Farm3 < Formula
  desc "Farm3 CLI (provider/consumer node runner)"
  homepage "https://github.com/farm3network/packages"
  version "0.17.0"

  on_macos do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.17.0/farm3-darwin-arm64.tar.gz"
      sha256 "9c043e196f9ed269854eaaf5657ceb18c8c7df6478bf6c06c060360cf68a75ff"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.17.0/farm3-darwin-amd64.tar.gz"
      sha256 "8755b9ab5cf3234ae1aa95b6fda750c7500c2c262cbc436795dae1b305dcc4d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/farm3network/packages/releases/download/v0.17.0/farm3-linux-arm64.tar.gz"
      sha256 "61166059fc23b3ef1fd555a5c1166415e59db7155e053dc6fab463933ea94ad1"
    end
    on_intel do
      url "https://github.com/farm3network/packages/releases/download/v0.17.0/farm3-linux-amd64.tar.gz"
      sha256 "05a99f20adec624ed87ad52c762ae06e187e2a3abfd1bdfe6943df65ad987473"
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
