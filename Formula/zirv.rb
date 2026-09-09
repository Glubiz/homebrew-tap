class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.40.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.40.0/zirv-3.40.0-macos.tar.gz"
    sha256 "6d23a6ca01d0c4081df2ec5e739124a160363977591e51e105745e5f772e46e0"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.40.0/zirv-3.40.0-linux.tar.gz"
    sha256 "0af81362f91cd26c0e733fb90e4af73591b50dfc04bd64b57d0de4223e5c14e0"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
