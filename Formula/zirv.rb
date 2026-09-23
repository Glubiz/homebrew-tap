class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.22.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.22.0/zirv-4.22.0-macos.tar.gz"
    sha256 "ceb794bf3e0f2c4946c63b55eb16863f36ed3a3a3fca6d90b15b030f0971b78a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.22.0/zirv-4.22.0-linux.tar.gz"
    sha256 "f70c59d8e3a6e0288a8d1bdfabf737d4c4992994669b80897d33cdcd5c52d3ec"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
