class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.47.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.47.0/zirv-4.47.0-macos.tar.gz"
    sha256 "a7a0cf8297005d88a4b7f61563d0c1e3bed419a9162ac33c741b3b6b4b2b1b88"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.47.0/zirv-4.47.0-linux.tar.gz"
    sha256 "a29b970bf439b03ee7361d48492c68cb9bb55dd798a718b9c893bbfae98a16fb"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
