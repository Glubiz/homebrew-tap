class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.21.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.21.0/zirv-4.21.0-macos.tar.gz"
    sha256 "3d9abf7962c5c4c69d7002f1d1f3e7f2c18c2b390230aee7a301e376c40113cb"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.21.0/zirv-4.21.0-linux.tar.gz"
    sha256 "49926e664689694128efea2d9b71b618448657d485a2326f9dfe1427a3d110eb"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
