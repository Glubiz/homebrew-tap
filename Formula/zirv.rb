class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.62.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.62.0/zirv-4.62.0-macos.tar.gz"
    sha256 "cf2f2a8ddc1f43f18fc8154c2c89579b73046362db5177ba400d581f7414161c"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.62.0/zirv-4.62.0-linux.tar.gz"
    sha256 "62a8d6d8f983f1df61d8d70dda9aafbd3788bf12e0f959633203669d70e3312c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
