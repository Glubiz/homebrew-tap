class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.17.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.17.0/zirv-4.17.0-macos.tar.gz"
    sha256 "b90f3f39c2fc852898ce6ba5bafadfccb2cb69de56ba4167ad33f9adfdfbdac8"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.17.0/zirv-4.17.0-linux.tar.gz"
    sha256 "37810c5e64b4cc2e408cdff866d2cd3564b5849ac3e443eaa44e30061959f08e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
