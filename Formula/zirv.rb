class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.35.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.35.0/zirv-3.35.0-macos.tar.gz"
    sha256 "695ba90d190fb289c4a8c14e76fc72e45f2edde347b1cabb972d613c9e10286a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.35.0/zirv-3.35.0-linux.tar.gz"
    sha256 "78d3234f28ad88b1d5b10793a81bf92fdaa7a9ad78057aebda53a6afca8e5267"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
