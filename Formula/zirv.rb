class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.11"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.11/zirv-4.41.11-macos.tar.gz"
    sha256 "f31c7e8842ddf1990592429871c142a5e50381d84e686c99c0f80eb4a350e6f0"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.11/zirv-4.41.11-linux.tar.gz"
    sha256 "57a3aac367def85967dcfb4a6937ef8d6a828f4109467d33213b9456af875f6e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
