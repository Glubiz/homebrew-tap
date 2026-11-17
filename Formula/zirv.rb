class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.73.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.73.0/zirv-4.73.0-macos.tar.gz"
    sha256 "ece45e6abd94805d4a8680f83d95817233463a5adaff6893e40c7bf692b9d613"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.73.0/zirv-4.73.0-linux.tar.gz"
    sha256 "d89f07e71eb25f4b638b23420dc7042e111b3968434a1da640496cd77c676382"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
