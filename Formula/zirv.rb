class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.9"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.9/zirv-4.41.9-macos.tar.gz"
    sha256 "64e26277d7bd610ae53e5ebfac9325e175024e7839efcf1db41409e18a717632"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.9/zirv-4.41.9-linux.tar.gz"
    sha256 "fc74d9c766f3eeec8252f2e74847bbbeb3c6d3a7178901cc7ada04f9625257fc"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
