class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.0.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.0.0/zirv-4.0.0-macos.tar.gz"
    sha256 "ff3e02af4605550059f14ca6f3e9c75b12a626800b99beecc32a654e547010b4"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.0.0/zirv-4.0.0-linux.tar.gz"
    sha256 "4940354ef740006bee74d9421b6b91e8e311063f9c85e5b46022b04372cc6b9a"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
