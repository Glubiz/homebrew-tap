class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.39.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.39.0/zirv-4.39.0-macos.tar.gz"
    sha256 "32e62991e70867ab86f29bd770daf0b5056a6e0efe16e4d529e06149884619b3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.39.0/zirv-4.39.0-linux.tar.gz"
    sha256 "c99a74fe84d02e8fde9bb95e46f0482e6f9a916b2f556492736bf67e210b4f7c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
