class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.19.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.19.0/zirv-4.19.0-macos.tar.gz"
    sha256 "3db1e98fec26e77bd0bb11442f0cf0cd039730b33dc2ad1a671feb318c2f2cb6"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.19.0/zirv-4.19.0-linux.tar.gz"
    sha256 "e59a41b86de76a585f50e802da5fa12da021dcb39dbf7e14bba5b19b550a21a9"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
