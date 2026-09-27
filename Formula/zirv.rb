class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.37.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.37.0/zirv-4.37.0-macos.tar.gz"
    sha256 "cb898d42ad7edfbbde8374ad378112e121ff7f764606838873a529b028c1e4fc"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.37.0/zirv-4.37.0-linux.tar.gz"
    sha256 "6ee3542cde15368448ecac64df8dc021e174a1fcf1131fe3cc343b8304c400a5"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
