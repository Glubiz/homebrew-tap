class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.30.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.30.0/zirv-4.30.0-macos.tar.gz"
    sha256 "8964cea36856200b8069b0b668aadf6476810587221aaf5af6fe22e046b6f74a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.30.0/zirv-4.30.0-linux.tar.gz"
    sha256 "20071439c71c7c63a76aed22fba97b412efb7c26559d5b73728b58786d9c6b53"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
