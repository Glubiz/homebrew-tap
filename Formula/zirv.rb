class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.10.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.10.0/zirv-4.10.0-macos.tar.gz"
    sha256 "5c249155f0092cd02bec7f4409280d41b9ec31380112f03fb21e2e7127d9c64b"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.10.0/zirv-4.10.0-linux.tar.gz"
    sha256 "951c9b0c511d153daa2919323aad58f639d557b661e0bd3d8692f2f2475ec2cb"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
