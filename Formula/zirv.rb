class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.6"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.6/zirv-4.41.6-macos.tar.gz"
    sha256 "257e0d68e5f0f4c31b227365f9b4e910e2eb3ea5eb3cb822d43ebae235fe5480"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.6/zirv-4.41.6-linux.tar.gz"
    sha256 "b445a3d04abacac288a2854c747630f2b0eb01fe4e9a70a0df6ccf2b79f05883"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
