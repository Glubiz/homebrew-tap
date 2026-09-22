class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.19.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.19.1/zirv-4.19.1-macos.tar.gz"
    sha256 "6e69a70a8c1a5e17f8b74eb28a2ac4eb604f786aef04924639f4e4d5624afa93"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.19.1/zirv-4.19.1-linux.tar.gz"
    sha256 "25192e47dfba012f2d0066751e80a00dc8275315aef5c60dce51ffdf7e664d39"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
