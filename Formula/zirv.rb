class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.31.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.31.0/zirv-2.31.0-macos.tar.gz"
    sha256 "8ac250c151fa2e24bec72f9a381503536cdbdd5c16ccc7bcee93f017c34ff25a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.31.0/zirv-2.31.0-linux.tar.gz"
    sha256 "dcf80eda5a5d29e9c429c8e6ce99cdc80939e39e1c6c6fba4077a20592127605"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
