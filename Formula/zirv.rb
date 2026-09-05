class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.21.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.21.0/zirv-3.21.0-macos.tar.gz"
    sha256 "35e30bf3a0b31f996bf7d6c6bd8bbe11c2f9c7a9b96c3a2b662a9de58f79b72a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.21.0/zirv-3.21.0-linux.tar.gz"
    sha256 "57654fc985e719a1690b63e5afad882dc76e5e400d5be209864bc392507502c6"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
