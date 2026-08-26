class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.30.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.30.0/zirv-2.30.0-macos.tar.gz"
    sha256 "f1ed1c022003358a7ed7f64e292627f4628f4d16a281e31f66c9814a7c97c48c"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.30.0/zirv-2.30.0-linux.tar.gz"
    sha256 "31c91a79e6a544e098a4400b9e06925afb4c9641327fa6e8f7ba550a415f6693"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
