class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.45.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.45.0/zirv-3.45.0-macos.tar.gz"
    sha256 "ffe99c89df9b555bfff1ff98732ebcc4a20f81283bc4207a3890a56b8a5c42bb"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.45.0/zirv-3.45.0-linux.tar.gz"
    sha256 "3f6ce59570fbaebd872160f11a0d9d05a39a39460668f328f4364b0150fba9f2"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
