class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.25.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.25.0/zirv-4.25.0-macos.tar.gz"
    sha256 "0a95e847b4fca123cb55563a7a1cdb3f02358fa67794cabc867a8bbd6d01384b"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.25.0/zirv-4.25.0-linux.tar.gz"
    sha256 "1dd3476c0392d328e4654b63cca0a030fa77d998ac36c49e7affef971bc8c56d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
