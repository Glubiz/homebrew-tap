class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.54.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.54.0/zirv-4.54.0-macos.tar.gz"
    sha256 "f52de1da8dbcd141983e9f936ad1f08da47d60b865d9ce569a1ab40056e177a6"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.54.0/zirv-4.54.0-linux.tar.gz"
    sha256 "15bd6529935f496839b562eca2bf26c9390983a8feedae7a8abce6259b8e87d9"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
