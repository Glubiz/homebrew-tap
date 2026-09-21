class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.15.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.15.0/zirv-4.15.0-macos.tar.gz"
    sha256 "0b5718df387b64c24f20d0a82fd55b5e981dd66db8742d5cdefbfd050cc044a8"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.15.0/zirv-4.15.0-linux.tar.gz"
    sha256 "e8ac6421853e5c13999f668fd30b1e4dde1abf0a2bdac3fa5ff7fa63e48072d5"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
