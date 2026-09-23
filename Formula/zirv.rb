class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.26.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.26.0/zirv-4.26.0-macos.tar.gz"
    sha256 "0fc28e87ed511df84466b45e129a2a258dd4b31861378f8a8d0996a2827a9e1a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.26.0/zirv-4.26.0-linux.tar.gz"
    sha256 "bd1b74670f45c1878d3fa9ead187490a7f6f387170140ca1031f1b88ef9d8534"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
