class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.70.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.70.0/zirv-4.70.0-macos.tar.gz"
    sha256 "e0fd8dfcbad95a7340f6861e913ccec654513d007bf74785a6e8cec34df1b016"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.70.0/zirv-4.70.0-linux.tar.gz"
    sha256 "2296b04db54f02396f8fd6e25d499e0649daed9a386def1603acc436b77ef998"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
