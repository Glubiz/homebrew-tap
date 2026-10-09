class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.59.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.59.0/zirv-4.59.0-macos.tar.gz"
    sha256 "67f98286f9f86adc8ba327530c15b166f8f7b890e9f4a97cd2359c0916de3bad"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.59.0/zirv-4.59.0-linux.tar.gz"
    sha256 "dd5c6fc2099968a781ee2043e1bffb51e554d760798092a28f870b8fa8bfe33c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
