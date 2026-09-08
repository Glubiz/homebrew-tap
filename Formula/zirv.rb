class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.34.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.34.1/zirv-3.34.1-macos.tar.gz"
    sha256 "72d0804118fe6f560ac9231de6c69a12eb5ec893ec7d5dbea499de746a6b8d61"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.34.1/zirv-3.34.1-linux.tar.gz"
    sha256 "5ec830904e989f3a22b06300b10bba3114bbb98f8dc638ca710467938dab82d4"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
