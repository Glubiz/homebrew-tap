class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.23.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.23.0/zirv-2.23.0-macos.tar.gz"
    sha256 "18e68e34e11442f02c3b461f694c47559dbd665fad21dca370b0f27748c6fe04"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.23.0/zirv-2.23.0-linux.tar.gz"
    sha256 "47d58281763f51953e15b70590a13e0e202cc4aeeb77c107f9294d48b31aa34a"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
