class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.38.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.38.0/zirv-2.38.0-macos.tar.gz"
    sha256 "fc070cc0dbf1979c3973454045f45e692e16ee167f1fbbd813218955a5a2607f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.38.0/zirv-2.38.0-linux.tar.gz"
    sha256 "cbc4216930b54e339a2350fc32b3a8aaa53249c816dd869027984cf5380c2429"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
