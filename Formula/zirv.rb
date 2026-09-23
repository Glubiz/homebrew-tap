class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.24.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.24.0/zirv-4.24.0-macos.tar.gz"
    sha256 "d7c3d1f654b89af95212d21ccebac487bb764ae72d21d34b02dbe3e955410116"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.24.0/zirv-4.24.0-linux.tar.gz"
    sha256 "4439ddf6bbb3a078a56ecbea5f521bdf75fa5c615d07e5d2776c8231bcd5d3fd"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
