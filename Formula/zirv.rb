class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.12.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.12.0/zirv-2.12.0-macos.tar.gz"
    sha256 "4d546ac14760ff351d8fc0fc92e765a588445f5c318063aaa2acd50c601dd8e2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.12.0/zirv-2.12.0-linux.tar.gz"
    sha256 "adbdcb6a701e7aade92b43c058c3960448f3d3f21f358c129f4734f46f52ca1b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
