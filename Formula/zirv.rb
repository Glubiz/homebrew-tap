class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.66.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.66.0/zirv-4.66.0-macos.tar.gz"
    sha256 "2f6d69131c9694c6285a1d1814efe4b586f5f5c7865cbb12b92f5dc6ed090486"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.66.0/zirv-4.66.0-linux.tar.gz"
    sha256 "2cad80ffd5cec57953ce78470e9b16c0bd713b4326588dc23e8407923e18a334"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
