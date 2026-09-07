class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.29.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.29.1/zirv-3.29.1-macos.tar.gz"
    sha256 "37d20df28c77e07b9c794d3f02035f4a2e8d0e0634ab614a0e4fd8015a4f3bab"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.29.1/zirv-3.29.1-linux.tar.gz"
    sha256 "37ea273ad60387c28ac3da09ac95f659f91e637b98ce9d1292207d42cf7932a5"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
