class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.56.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.56.0/zirv-4.56.0-macos.tar.gz"
    sha256 "2ee3f983207a4c976461591847862f29d37a116d910f9a2e594449b8d7316c96"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.56.0/zirv-4.56.0-linux.tar.gz"
    sha256 "70d834e5d8c5b2b24338089ebf54c2272e7d7f004bc28b2682186601b02b19b1"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
