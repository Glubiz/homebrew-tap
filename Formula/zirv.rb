class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.71.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.71.0/zirv-4.71.0-macos.tar.gz"
    sha256 "925f3a26bf3eab48c592537d296d2962baf148b5a72707b016d082aab97d2854"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.71.0/zirv-4.71.0-linux.tar.gz"
    sha256 "a5d44fa25166f5dc1ac936e00d17dc035271c6f046a46f990128abcfe22a4716"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
