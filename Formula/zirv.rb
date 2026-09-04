class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.17.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.17.0/zirv-3.17.0-macos.tar.gz"
    sha256 "31fa9dbac3103159058c22b34676c5bc092b00733b56a2c69e9110abfa87d210"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.17.0/zirv-3.17.0-linux.tar.gz"
    sha256 "c24a93ab7dc9243690b17d8512b18bb16e0148725a53e66070b9db642fd03eb3"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
