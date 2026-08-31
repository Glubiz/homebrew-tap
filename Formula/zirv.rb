class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.0.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.0.1/zirv-3.0.1-macos.tar.gz"
    sha256 "bd089dea8ca9a05e335cab1b959b99552d105644cdd8e56311b296650abf27ce"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.0.1/zirv-3.0.1-linux.tar.gz"
    sha256 "c5f0770519ad7c2b70430dbaabe912cdeb391c7b88dacdee204ce7da8a964d9b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
