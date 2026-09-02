class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.11.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.11.0/zirv-3.11.0-macos.tar.gz"
    sha256 "5101689ec1a233d4b0ba377779594e93f42965995bd96b7b81c845676b9eed9d"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.11.0/zirv-3.11.0-linux.tar.gz"
    sha256 "4ae08e70d6d0ce2a40484b01e1eba43466e1db405024891e708ac35fcec64cb1"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
