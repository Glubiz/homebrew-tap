class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.27.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.27.1/zirv-3.27.1-macos.tar.gz"
    sha256 "9f4ad2cdefc25dd40980debd0a87b8bfcc029b104c1dfafd3c0e00616714a0ce"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.27.1/zirv-3.27.1-linux.tar.gz"
    sha256 "5accc24f6d559390fdd3dcc7ad46e2489db778b817ec15a5d5b6a08d454a7960"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
