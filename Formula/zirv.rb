class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.2"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.2/zirv-4.41.2-macos.tar.gz"
    sha256 "5f6958dfc1d8fcbfd9de1d38ab7bebc01cf278ce269c3dbf763f012b3db6b587"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.2/zirv-4.41.2-linux.tar.gz"
    sha256 "5b6af16b8c117c2cf14d4a0a2093abe932d135490630cc36389f0f4b36e526f6"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
