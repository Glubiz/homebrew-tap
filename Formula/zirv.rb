class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.33.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.33.0/zirv-4.33.0-macos.tar.gz"
    sha256 "9ebc8a67bc3f21e4ecc266dcd00e27276d74fdd2f49727022b9e356863fac61a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.33.0/zirv-4.33.0-linux.tar.gz"
    sha256 "70ba2cc9bf27e060cb5ca81e56098513943efa160f5493ed3c1a2dee8d3079f1"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
