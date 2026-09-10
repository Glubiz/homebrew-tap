class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.46.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.46.0/zirv-3.46.0-macos.tar.gz"
    sha256 "ac0a79c4aab94b2a43433e507831f0068ad3f3fe6ca241fcb4444f90c5773c3c"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.46.0/zirv-3.46.0-linux.tar.gz"
    sha256 "374c774f97a8dc9e27fd909a1c219614b389863ddcbfd482e0ba46b16c0e4dd0"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
