class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.65.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.65.0/zirv-4.65.0-macos.tar.gz"
    sha256 "2a82d1b81554b2a07c9876c97e7b6e9090075bf505feffbd343240c186ccf7d3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.65.0/zirv-4.65.0-linux.tar.gz"
    sha256 "99d34887c59e1b6e025a25a197fe7542cac8d105e8e431475476f6f12840953f"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
