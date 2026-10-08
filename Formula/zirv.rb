class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.58.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.58.0/zirv-4.58.0-macos.tar.gz"
    sha256 "a7057d6e0c317decaf4ebb085b11aa08bc8d8f0bd8149a4372f4588ed6f9e0e9"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.58.0/zirv-4.58.0-linux.tar.gz"
    sha256 "1e87eacff29bab510efaf107994492fddbd3d2a66cc8bd37835af43668b38e3c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
