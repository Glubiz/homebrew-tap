class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.9.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.9.0/zirv-2.9.0-macos.tar.gz"
    sha256 "3bfd923b47104fe0c8c536d8a97f12199d8eab061ccaa798997c4dbe85fce5ce"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.9.0/zirv-2.9.0-linux.tar.gz"
    sha256 "0c1c760b420cc55b2823221188a2a07efd30a5cb353f32469b221321e9c5b114"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
