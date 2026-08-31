class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.39.2"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.39.2/zirv-2.39.2-macos.tar.gz"
    sha256 "3f9719f4ab6df8f079abb8b6fe6b07e36195d720b7a00f0de1637b97db6449db"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.39.2/zirv-2.39.2-linux.tar.gz"
    sha256 "471ad5e40d67eecf07856d79980f8fc46090e343bdbe8a744eacde521dac1656"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
