class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.33.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.33.0/zirv-2.33.0-macos.tar.gz"
    sha256 "7cae9b4fc711225a910a8995fe3aba56fe0abd1ba7bf1f5958f891440a405590"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.33.0/zirv-2.33.0-linux.tar.gz"
    sha256 "f2775872a2f96bc546f53e4c08241f3ba3e9effcac52077d62c5efdb70618ea2"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
