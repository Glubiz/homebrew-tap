class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.3.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.3.0/zirv-3.3.0-macos.tar.gz"
    sha256 "ec19b154c2279009b66f6f6906f4890219bd164f81598fc174ce5bcd402cdb90"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.3.0/zirv-3.3.0-linux.tar.gz"
    sha256 "bb3d43a72150c327cc39029e6b41cba198a08f22c6d2c5cb01ebfd59f62cd416"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
