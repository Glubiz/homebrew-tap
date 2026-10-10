class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.61.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.61.0/zirv-4.61.0-macos.tar.gz"
    sha256 "90032454141d5b0b459ba693aa64d0a39de35e4ac003ea6c59c574acd6c77bfb"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.61.0/zirv-4.61.0-linux.tar.gz"
    sha256 "e8be8e2243aa77693eaddc42e8a414237fb8b7ae15d8e77dae306b765c601a0a"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
