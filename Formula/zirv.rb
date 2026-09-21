class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.14.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.14.1/zirv-4.14.1-macos.tar.gz"
    sha256 "ab725bbd892d10c5469b61f053f646d2ceaebfe7d24f9e4cce26cf42fcf7deed"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.14.1/zirv-4.14.1-linux.tar.gz"
    sha256 "f971535bf4a6341ed1c015efc3fae18d8f4829877c8623bb8796ed9f94585b19"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
