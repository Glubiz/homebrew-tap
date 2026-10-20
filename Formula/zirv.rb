class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.63.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.63.0/zirv-4.63.0-macos.tar.gz"
    sha256 "eb1f08b672573151c87193ea8ab72a2c4a7ca14834c6e705b7169d6a9eb77798"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.63.0/zirv-4.63.0-linux.tar.gz"
    sha256 "9cdb08584f8cf0d32975a0aaec536faea737e28ff414f53ef096d2584fc05c80"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
