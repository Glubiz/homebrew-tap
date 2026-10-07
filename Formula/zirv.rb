class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.57.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.57.0/zirv-4.57.0-macos.tar.gz"
    sha256 "97ea693f8e75404031840ae2fff5f363ce55a0d456c85f4175404ecc6d8b9999"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.57.0/zirv-4.57.0-linux.tar.gz"
    sha256 "e1d24f014a38b617ffe5dc7afc761ea849a92384a065ea62243832dde432e6bf"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
