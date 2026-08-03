class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.5.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.5.1/zirv-2.5.1-macos.tar.gz"
    sha256 "7be2151c2b63f81c2d663d63966795688823371b1078c7ab67ac7f62b2006063"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.5.1/zirv-2.5.1-linux.tar.gz"
    sha256 "85d1690e896843b44d1ae1d93536bc9fc32ccade20c382bfa4271da7090998c9"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
