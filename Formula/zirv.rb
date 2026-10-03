class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.48.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.48.0/zirv-4.48.0-macos.tar.gz"
    sha256 "2172615ff3b12d95cf7ad7fb738a66a7bad82b39bc324a4e692c533c97e7f3e0"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.48.0/zirv-4.48.0-linux.tar.gz"
    sha256 "7cbceb93990620b902d1f9789082e0e1956a876f51e53d09fdb2ceded0f3876b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
