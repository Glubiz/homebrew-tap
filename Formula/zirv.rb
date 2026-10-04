class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.49.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.49.0/zirv-4.49.0-macos.tar.gz"
    sha256 "174c49b219566b19109071e934764fc356b732d552fc004733f1da95caa984f9"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.49.0/zirv-4.49.0-linux.tar.gz"
    sha256 "e170b58733d8d3de0f413a4156f853c2c7c6d81c14c53730c08e115abb40a128"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
