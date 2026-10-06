class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.52.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.52.1/zirv-4.52.1-macos.tar.gz"
    sha256 "7802ae21260dbc030216450310693e1867ac76f226e7efac056e3308f8cfc167"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.52.1/zirv-4.52.1-linux.tar.gz"
    sha256 "76efff5b049119d6f43962dcd068291c2dbe875327e657d0c331ed46e44f3c8b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
