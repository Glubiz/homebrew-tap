class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.28.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.28.0/zirv-3.28.0-macos.tar.gz"
    sha256 "a804235897c87c3bc4032a6007a2efc649823dc18131fd6150d67a14f5bca458"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.28.0/zirv-3.28.0-linux.tar.gz"
    sha256 "ff8913da25603d546851b861be85de4c4fa5c33b68df0713209d9deb538fab95"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
