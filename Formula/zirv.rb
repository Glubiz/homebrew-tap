class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.10"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.10/zirv-4.41.10-macos.tar.gz"
    sha256 "23ebe833960fc9f455aea91e5a1268e8c167a27dadcf9da83415190a87905a8a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.10/zirv-4.41.10-linux.tar.gz"
    sha256 "e2352c7bd156e417e51803e9951d1a1797569752a78831de8c976941b82608cb"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
