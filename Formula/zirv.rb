class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.3"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.3/zirv-4.41.3-macos.tar.gz"
    sha256 "e55da36f7e068b19e4841a1ffc348bb3df0c31f64c3469bd179027424b7ed7e8"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.3/zirv-4.41.3-linux.tar.gz"
    sha256 "790f6b889c45c51570e609f87077a1c819c303b00675282caced0874f80317d3"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
