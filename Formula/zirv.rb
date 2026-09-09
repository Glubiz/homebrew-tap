class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.39.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.39.0/zirv-3.39.0-macos.tar.gz"
    sha256 "5bf55d931bcded63ddb9e15fb54a03e4bb6727ce50eb2b11d1e98fd383371b11"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.39.0/zirv-3.39.0-linux.tar.gz"
    sha256 "be76c8af9e49c31246dc46ecc951418ff2deaabe772436aae10fcb6025944ce0"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
