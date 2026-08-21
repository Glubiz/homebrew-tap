class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.17.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.17.0/zirv-2.17.0-macos.tar.gz"
    sha256 "0d5fd6a5c7d2bad2fb25a4ffd67fcb8ef5b299ce49488292406b5d4ea8281273"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.17.0/zirv-2.17.0-linux.tar.gz"
    sha256 "04ef387e36fa9aa32ef8f7c62526e1a0b66f53a0fb86d67aef6cde5a71de226a"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
