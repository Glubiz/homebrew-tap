class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.74.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.74.0/zirv-4.74.0-macos.tar.gz"
    sha256 "5a5e15b4c3f2150f720a1f2eb56c79f64c0197d74a8ed99007999fb338295182"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.74.0/zirv-4.74.0-linux.tar.gz"
    sha256 "2e423b560db2e7a3d192bfdb733fcdf2eaded4b70fa1565b5518d22eb45bc402"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
