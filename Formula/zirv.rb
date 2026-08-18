class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.11.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.11.0/zirv-2.11.0-macos.tar.gz"
    sha256 "3888c0274829e0a808dafdd8d313b310b86dde77bac5e1d12ef9a0d13fd3564f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.11.0/zirv-2.11.0-linux.tar.gz"
    sha256 "d7f3ee50171b1232b15738caf7aebea5b13ef0460056c7ca655f9af6945e044d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
