class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.5.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.5.1/zirv-2.5.1-macos.tar.gz"
    sha256 "47fe002dd1ba015bfe5c793c02135571846cd30e19e51147c970ed7e16f47efa"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.5.1/zirv-2.5.1-linux.tar.gz"
    sha256 "cd2a3ec91c9af431bbe0ae822c287eb8be13bd1e23959136e524a2fc33513e13"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
