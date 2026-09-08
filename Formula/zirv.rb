class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.36.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.36.0/zirv-3.36.0-macos.tar.gz"
    sha256 "576abb1b69a45b12ecaa34db1692bbd02276d8c89cfa5c4ae6458ae41c7c61b5"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.36.0/zirv-3.36.0-linux.tar.gz"
    sha256 "9e9020571024265b1d2fba53414c4e43038091440529e1f3f78ab43a03621217"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
