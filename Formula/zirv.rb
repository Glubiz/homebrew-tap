class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.2.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.2.0/zirv-3.2.0-macos.tar.gz"
    sha256 "cf23a0f7150382116d2bf973def1c55241a50abf6c16e0063af048d99d18806b"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.2.0/zirv-3.2.0-linux.tar.gz"
    sha256 "4ec69bfc425f5d0e061e42987393d9b8fb5c795e40a8a6c29e1d1197d38d57f2"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
