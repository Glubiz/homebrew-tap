class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.12"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.12/zirv-4.41.12-macos.tar.gz"
    sha256 "2de2f42c7de1835fd402a8c2ce7cf50f150077dbaaab80bc674552a0e059caf1"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.12/zirv-4.41.12-linux.tar.gz"
    sha256 "76b270ed753656264372048a9085bda8a1607fb30e1f993041aa879af145025b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
