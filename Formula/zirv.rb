class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.50.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.50.0/zirv-4.50.0-macos.tar.gz"
    sha256 "ad04b7783b2c2908a6fcece1713718ff98edb7677098359f2211c0ab4e5fea82"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.50.0/zirv-4.50.0-linux.tar.gz"
    sha256 "e9e96287719a6d5a884393fa25e7e5816b948d8ea151d3e0b427d64303fe3185"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
