class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.6.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.6.0/zirv-2.6.0-macos.tar.gz"
    sha256 "677f5173e1515e23a48dad8e77302ebd2aefe3d9c50e12e75c7ece237f5b63e2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.6.0/zirv-2.6.0-linux.tar.gz"
    sha256 "d9fdee15a9ce01214f66fbe61878e0e9f175ea92fc96e71d22d29a0a9f533272"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
