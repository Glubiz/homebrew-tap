class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.25.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.25.1/zirv-4.25.1-macos.tar.gz"
    sha256 "9775cc6c3b4e74226f61ebaf5676994f05eb79bd023f5305636edd3652b19448"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.25.1/zirv-4.25.1-linux.tar.gz"
    sha256 "425aaa29246bd0d3ae2279ae7f250f9646709824bb8748064a3c7148189726d4"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
