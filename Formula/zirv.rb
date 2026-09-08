class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.32.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.32.0/zirv-3.32.0-macos.tar.gz"
    sha256 "9efd7eea3813e3d13a1f550140770e06a7e7d0fa5e8ebf3784f4dd384a94a6c3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.32.0/zirv-3.32.0-linux.tar.gz"
    sha256 "ab5f8dc6ae544c8cdf9d0d84749b6ca80c15827154d0aa03962c02bc97d96b5d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
