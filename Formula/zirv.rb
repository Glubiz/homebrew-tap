class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.38.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.38.0/zirv-4.38.0-macos.tar.gz"
    sha256 "86eb272b62d18f0fb14ed0e2c42c4ae00abb6a4ae86de6624a4941c70c9140dc"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.38.0/zirv-4.38.0-linux.tar.gz"
    sha256 "bcaadf908de824e5f2a6005cfd255480a01e5a2b1f5f16e01fac42b25d15308c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
