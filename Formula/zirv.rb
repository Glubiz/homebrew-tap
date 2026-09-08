class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.34.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.34.0/zirv-3.34.0-macos.tar.gz"
    sha256 "10e53e46d6c4212d62b9900ced64c4df3f9219b28474695ddcdcfaa052cdb108"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.34.0/zirv-3.34.0-linux.tar.gz"
    sha256 "a2ced4fb59dceb94884f3283e755083660e74a02a2f23f9e57b5ee72bf9f3a1d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
