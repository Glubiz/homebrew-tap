class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.13.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.13.0/zirv-3.13.0-macos.tar.gz"
    sha256 "4b7881531ad37030e7e139fd5092d7d1ee37ddba70feb12877942ebe2deed682"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.13.0/zirv-3.13.0-linux.tar.gz"
    sha256 "7d0ba7cb7c6e1fdfb8f52761499ee2c0f1a404f0e8e2c26c668d77507b2288b4"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
