class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.18.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.18.0/zirv-4.18.0-macos.tar.gz"
    sha256 "17e4613bf05ae0614f10a9577883ae6b9cdc4a8cd70bdad58fc0a814b60bfff5"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.18.0/zirv-4.18.0-linux.tar.gz"
    sha256 "e2b1c18f43fbaeb3ef6df2352826a8ac046d790d4d1d1f2295565785f19807ac"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
