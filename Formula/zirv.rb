class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.11.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.11.0/zirv-4.11.0-macos.tar.gz"
    sha256 "2ac273d158614d26aaaa5712dfd3f7534e1bf542490cfa9b1de355d06f85a6ce"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.11.0/zirv-4.11.0-linux.tar.gz"
    sha256 "f90f32264a6ccca2925af1f1b58c5d07b703a880ff49fa7fddf66ddf9f043658"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
