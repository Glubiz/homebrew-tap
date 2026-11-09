class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.67.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.67.0/zirv-4.67.0-macos.tar.gz"
    sha256 "4b86d92b0d19057a43b7eca0e39e5118a23ce376e7208e55a5b2d593d5157b52"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.67.0/zirv-4.67.0-linux.tar.gz"
    sha256 "ac1235a823260190f9802cd04b1391d56e8444197e1830594a49def9b2149f21"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
