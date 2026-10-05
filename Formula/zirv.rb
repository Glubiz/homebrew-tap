class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.51.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.51.0/zirv-4.51.0-macos.tar.gz"
    sha256 "d9f24d6203412f427b5fc804114d302d3efea1bace41e6c942eef2239661bb51"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.51.0/zirv-4.51.0-linux.tar.gz"
    sha256 "8feacd12a53ccc9a7a70698e97d6e5bd3d0dd57de7f751ee5635dab9132e1f97"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
