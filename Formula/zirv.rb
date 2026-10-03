class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.46.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.46.0/zirv-4.46.0-macos.tar.gz"
    sha256 "d453816d46cdb2fac4151ae945283f8527bb4475639d0335c90b891d301f8ab0"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.46.0/zirv-4.46.0-linux.tar.gz"
    sha256 "f5e3fbac51431d884fdf44201cf2c0cda5ab25223b123eb4ca88196bbab17ae3"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
