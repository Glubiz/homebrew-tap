class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.77.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.77.0/zirv-4.77.0-macos.tar.gz"
    sha256 "7f48be5e3a705e606728b883fd07a77fcb508e003007ea82c024fd3185c63b2b"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.77.0/zirv-4.77.0-linux.tar.gz"
    sha256 "d0d5b857083802efe120dd1b2458de70c23c7957240536b36952ac57c1a04e7e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
