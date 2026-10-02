class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.42.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.42.1/zirv-4.42.1-macos.tar.gz"
    sha256 "cb13326ef0cf1917a8ff5eaad8e63eac6ed042956fb752c1d7b886cd9304ff15"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.42.1/zirv-4.42.1-linux.tar.gz"
    sha256 "5d418bb74d9162a0d7ee2115783936ae497889705a4c8eb11e58f7d8ad1a6335"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
