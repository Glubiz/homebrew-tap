class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.0.2"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.0.2/zirv-4.0.2-macos.tar.gz"
    sha256 "623e2664ce04b40355d269685f44b9ac5602ebbccaceded26800d8fa2e22bcde"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.0.2/zirv-4.0.2-linux.tar.gz"
    sha256 "281d8223599dda47e3bb427ce292d3e7bd4847502192ed0a8915774fe6a1d9b2"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
