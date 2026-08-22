class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.21.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.21.0/zirv-2.21.0-macos.tar.gz"
    sha256 "e8763f2f71d2916b9e967ed87d25a06c92aaeff2996412d3046a4ddda71966da"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.21.0/zirv-2.21.0-linux.tar.gz"
    sha256 "deb43b66a605eea72e58206751934725ac4d49563f50113a5d5bd3f9d2fe3efa"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
