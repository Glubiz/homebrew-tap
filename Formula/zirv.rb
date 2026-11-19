class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.74.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.74.1/zirv-4.74.1-macos.tar.gz"
    sha256 "4d15de6cbfb8f2cc1a043e4d8bf5623fe575006419a91430ce3f632171b3f2fe"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.74.1/zirv-4.74.1-linux.tar.gz"
    sha256 "414e54baba1414daa56a12ec96b41528f6b95e668862bf678dd13efbf4cd8d69"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
