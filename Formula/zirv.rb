class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.42.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.42.0/zirv-3.42.0-macos.tar.gz"
    sha256 "f50a5494dbe18c63dca7e079f1d680773f67af6fff4a9d87ee4c2b16ed3057c2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.42.0/zirv-3.42.0-linux.tar.gz"
    sha256 "0a9e7c08565a9a28f25881b28e716aed51fe0c13c5f563a5edc557f48f907d72"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
