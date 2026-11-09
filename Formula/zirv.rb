class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.68.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.68.0/zirv-4.68.0-macos.tar.gz"
    sha256 "0c59492a92171a8c4a21cb8d567a7dd739742795e22a54fe6a35be004fe4e03e"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.68.0/zirv-4.68.0-linux.tar.gz"
    sha256 "0ac85ed9394c22e6767d21744d7a42228adebbeeca8ec6458a18edd19f41f012"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
