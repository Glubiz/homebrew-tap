class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.32.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.32.0/zirv-4.32.0-macos.tar.gz"
    sha256 "f8210d9e57bba34a8c9c522d3eb48136755004ab678ec0c7816672e9c8a46ec9"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.32.0/zirv-4.32.0-linux.tar.gz"
    sha256 "9fb3d0da7060c44ea207b73c78ae2571a3e90376672b163e74f23b64c42d0327"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
