class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.12.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.12.0/zirv-4.12.0-macos.tar.gz"
    sha256 "dd0ce8b033f7fce52571917ab446174246b04b373cbe8d6113eb81910c134102"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.12.0/zirv-4.12.0-linux.tar.gz"
    sha256 "46a082f818ac88334f92bebec2b05a0df1709291b5865b2534a4976c75032781"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
