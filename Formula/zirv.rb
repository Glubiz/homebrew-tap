class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.28.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.28.0/zirv-4.28.0-macos.tar.gz"
    sha256 "ab9d43ef41b7fb727b0bc3813a73e0f0235896ddf33b02ed159f47d5b205a800"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.28.0/zirv-4.28.0-linux.tar.gz"
    sha256 "8007087d5453e5a8daed12d6979c9686a75594bce1c8a1c013e3cc7d4c5e2e1b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
