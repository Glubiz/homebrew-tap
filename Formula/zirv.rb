class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.9.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.9.0/zirv-3.9.0-macos.tar.gz"
    sha256 "2b29b0b207b65b172a057f8cd5f8c73fd6f4e8709fb0fdf3ba6f47dde1325adf"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.9.0/zirv-3.9.0-linux.tar.gz"
    sha256 "a3f97ea5267b50361c6b5475821bfb9781b015330eeba8e0b2911b58988fc5f6"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
