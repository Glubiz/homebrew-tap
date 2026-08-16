class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.6.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.6.0/zirv-2.6.0-macos.tar.gz"
    sha256 "8a2935e1a6a55e0a2d89123c8a3db1b2722efd1e64e6af2e79e78a77a9108893"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.6.0/zirv-2.6.0-linux.tar.gz"
    sha256 "85be2ffd4b260399702b9a0daa5dba9bb248e3e500c0c4b9b1418aa742df749d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
