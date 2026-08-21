class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.16.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.16.0/zirv-2.16.0-macos.tar.gz"
    sha256 "7eed195fbd42681308df272cdba7c364581904f004306cd07516166a20331c33"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.16.0/zirv-2.16.0-linux.tar.gz"
    sha256 "74b5347b7ff9d94dcdf89ca990b4e69d761ea7b151d658e3989df8e16b32076d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
