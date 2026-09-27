class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.35.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.35.0/zirv-4.35.0-macos.tar.gz"
    sha256 "fb558b3d5bf7f6d0d4059d7326f8636fcbe429580d65e70ac760ec7555c4f3a1"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.35.0/zirv-4.35.0-linux.tar.gz"
    sha256 "7435bfdb064213ed077ee747dcb9a5119720c1e1102641f322336fedc6352f0b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
