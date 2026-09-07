class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.29.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.29.0/zirv-3.29.0-macos.tar.gz"
    sha256 "9a2217a52afa13e0519cd22a573270b14cd5a531020d8f3989ec03b0e75a3fb4"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.29.0/zirv-3.29.0-linux.tar.gz"
    sha256 "d8f2bc38f0e047df0a6285b8dccebbd83f415f9ec746a813a78f45343e0e6452"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
