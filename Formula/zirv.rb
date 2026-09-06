class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.25.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.25.0/zirv-3.25.0-macos.tar.gz"
    sha256 "5a5afe13ae4a34237ff5d75cd21d832e909d84c390b0ec5fa0a48d1ea393dbed"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.25.0/zirv-3.25.0-linux.tar.gz"
    sha256 "2a86c49e6e7a861936421cb0f065608bcf39d2cff0dd617ab9aa64dab81f3a5e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
