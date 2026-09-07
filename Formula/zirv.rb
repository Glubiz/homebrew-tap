class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.30.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.30.0/zirv-3.30.0-macos.tar.gz"
    sha256 "14e03e3310eb3aedea85ed4a0b7d8b13e6bafaa969d3697e9a1286adb7aa9b79"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.30.0/zirv-3.30.0-linux.tar.gz"
    sha256 "e10343c45b30fbdcf8ac8abf82f9fb397f7e82bc50a4bfcf9f7128802dc30c14"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
