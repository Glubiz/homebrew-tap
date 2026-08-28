class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.34.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.34.0/zirv-2.34.0-macos.tar.gz"
    sha256 "abe1d8d55f239fb4833a0101b4f490343e47daa76a6825f878abc4e05fb6da6a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.34.0/zirv-2.34.0-linux.tar.gz"
    sha256 "51413214f523e4e6d3935317efc0ac73c47527f89f586ded873b47835655ab42"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
