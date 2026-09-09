class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.38.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.38.0/zirv-3.38.0-macos.tar.gz"
    sha256 "d3b355e83d33ead69b2ccbe86f76ad7e76e13877cf923d86cc025bdecf42f9ee"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.38.0/zirv-3.38.0-linux.tar.gz"
    sha256 "9ce7e7d9c51ed1aee25c7d08fae40831acb9b7481c5ff8d57c59285ee155bc4f"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
