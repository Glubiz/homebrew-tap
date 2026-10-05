class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.52.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.52.0/zirv-4.52.0-macos.tar.gz"
    sha256 "40ee7ec52d8ff854971d3c29ddf0acc794c79276412f0925a0ce92ad0c6ca5a2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.52.0/zirv-4.52.0-linux.tar.gz"
    sha256 "41f898d9b7a3e79238f300327ad117a8223e34710bc1cf860edc65d963c49cbe"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
