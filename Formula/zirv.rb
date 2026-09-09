class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.41.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.41.0/zirv-3.41.0-macos.tar.gz"
    sha256 "268a6ac1c8667c1a1cde754d1a61b5e4b8eb9f89ff026196f682259681f87c44"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.41.0/zirv-3.41.0-linux.tar.gz"
    sha256 "b6b8d27cc14d48df9245119b55eb1fbcad4d04d879a4d2a733ffd19778fd148f"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
