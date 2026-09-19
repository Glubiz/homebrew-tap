class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.7.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.7.0/zirv-4.7.0-macos.tar.gz"
    sha256 "d233125f2212641c82456ba9d01f544b2d1f54064064b41b16c3546393abd9a2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.7.0/zirv-4.7.0-linux.tar.gz"
    sha256 "2acfab1f9e430749cfa7fa90a01bfbf011507028fff280a40a4f4dedc5682ebc"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
