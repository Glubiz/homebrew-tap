class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.0.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.0.0/zirv-3.0.0-macos.tar.gz"
    sha256 "a2953b66c44a062036893d341ce7ad8eb5364a97d48e9950ffedc69515a49a81"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.0.0/zirv-3.0.0-linux.tar.gz"
    sha256 "1d8915c55cc190aeae92f6d1aea4f0aec4d49ea952a5fe3f5963e7933d648722"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
