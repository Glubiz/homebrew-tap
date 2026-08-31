class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.1.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.1.0/zirv-3.1.0-macos.tar.gz"
    sha256 "40297c9d3d22d0962df1950d889d3b3ea79efec7b5641e496d36951d97754605"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.1.0/zirv-3.1.0-linux.tar.gz"
    sha256 "a389d6ee970ae2297f30bd2d803a1080282db674a2e0f6b5d6db195b4b10cba1"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
