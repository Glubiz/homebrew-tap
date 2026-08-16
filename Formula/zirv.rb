class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.8.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.8.0/zirv-2.8.0-macos.tar.gz"
    sha256 "e1c3f4ad76122d64c1e3d252fafe5296b41a6b0785163c97c7b75bbc2de04347"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.8.0/zirv-2.8.0-linux.tar.gz"
    sha256 "81553b540388687fbeb6bfb2045930da35abe1e48bd155587d5897fad5575aca"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
