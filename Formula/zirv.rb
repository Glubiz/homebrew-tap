class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.38.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.38.1/zirv-2.38.1-macos.tar.gz"
    sha256 "0a0e53a2e9c3b826c0f34dd26d1726fb8c0b402f86fb398c97b49011a053a3e3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.38.1/zirv-2.38.1-linux.tar.gz"
    sha256 "49521307216102dcb0d3bffe9ff771738b69f467b618ca12b050673781cb9281"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
