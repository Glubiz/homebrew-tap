class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.23.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.23.0/zirv-3.23.0-macos.tar.gz"
    sha256 "5d31d4053dd0e5389098f3d63b98abc81f519b3e5c865f3b0246f6d20c90fd44"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.23.0/zirv-3.23.0-linux.tar.gz"
    sha256 "2d3647fd5ea82771d2a0f613ddc3986a529e6e870aa9fca6daf63146b94be5b9"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
