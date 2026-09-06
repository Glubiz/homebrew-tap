class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.24.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.24.0/zirv-3.24.0-macos.tar.gz"
    sha256 "ce16a50ac46cb8636532e500bc10487674f4d1e7d28ca5931a628d6cae8835ef"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.24.0/zirv-3.24.0-linux.tar.gz"
    sha256 "774d79a0bfcbb3757475d35dcc32adf01027cefe3edee4024cd291e53075fbf7"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
