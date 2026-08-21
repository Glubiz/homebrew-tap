class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.14.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.14.0/zirv-2.14.0-macos.tar.gz"
    sha256 "be1b26b2a6981e404deea0ad9f5c3fa904a990f9e5ac922d670cc847055c39f0"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.14.0/zirv-2.14.0-linux.tar.gz"
    sha256 "395d9769c1582308bf5bf9276e6d574ad868ad961f394a5d0970ba5359e77a4b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
