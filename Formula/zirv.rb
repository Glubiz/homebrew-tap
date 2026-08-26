class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.29.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.29.1/zirv-2.29.1-macos.tar.gz"
    sha256 "3d1a6d147150c73c219e2a4330d19f7084e917f338ee6c6eb1cdeb4681578f3e"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.29.1/zirv-2.29.1-linux.tar.gz"
    sha256 "b451dfe5f3fdb65071f74bd7de744fcc0cfa80d90f2362369ab8ab0a0b2b058b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
