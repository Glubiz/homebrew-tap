class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.72.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.72.0/zirv-4.72.0-macos.tar.gz"
    sha256 "c9a19200ae4effccaa9b749f5da7246ac8d05ee0e5b5b48911049e69279099b0"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.72.0/zirv-4.72.0-linux.tar.gz"
    sha256 "71c2426d27365fb83ccba1a38a6683d732b48c34d76906240d7c1f95b479de5e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
