class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.36.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.36.0/zirv-4.36.0-macos.tar.gz"
    sha256 "32e3968327144525a6ff5044006fa7f4ceea7578903d43606cd59df7766f03c1"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.36.0/zirv-4.36.0-linux.tar.gz"
    sha256 "b8e5c249880cc5c85cd0008563da4a5eabd90077e9f75e6f94153ba902a777be"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
