class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.1.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.1.0/zirv-4.1.0-macos.tar.gz"
    sha256 "862521ef83944b8173f84b83c1f2d4887c4898af1ab196e73dfb487b4e48e6ce"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.1.0/zirv-4.1.0-linux.tar.gz"
    sha256 "1dc230661c26c0245eec00576e0c06683c19e27fdc2ba12208f3742d613a81a3"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
