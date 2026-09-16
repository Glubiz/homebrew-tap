class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.0.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.0.1/zirv-4.0.1-macos.tar.gz"
    sha256 "8b4023b19152773c0aadadf6431425245ac037f2556c9bf8ed38e01cecea148e"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.0.1/zirv-4.0.1-linux.tar.gz"
    sha256 "c7b84d7ba5a3ca2a6bc9e7ff3e0bca2d542c8ebf31a7f6d2d11edb8f8576b3d5"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
