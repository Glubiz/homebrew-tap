class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.34.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.34.0/zirv-4.34.0-macos.tar.gz"
    sha256 "df0adae43db4538d96bf1b27976586ac577d2950f63d436e2e153b4773fb1938"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.34.0/zirv-4.34.0-linux.tar.gz"
    sha256 "60994a7e3ac85f323c96b09113537d0a64a35e3a7e81834371e7c6b00d7c6900"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
