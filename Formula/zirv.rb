class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.20.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.20.0/zirv-4.20.0-macos.tar.gz"
    sha256 "74bb1753607c7e4c8ced3d58ea9371b74922d7a48f66039e5e8b456ebdcaf2f7"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.20.0/zirv-4.20.0-linux.tar.gz"
    sha256 "88ce75d039823e9eeb5558f833e0310a8241d43bb9f96def01fad7e7bdbcbb1d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
