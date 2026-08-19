class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.13.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.13.0/zirv-2.13.0-macos.tar.gz"
    sha256 "aa9b43a11f1fda6130ed0cce08c124087f63a888f3c4b16681ad1e5fd5afc05f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.13.0/zirv-2.13.0-linux.tar.gz"
    sha256 "61736021e659b907b52bf2902a4e0f7b326ef90db482e459a99114fc71e3cc83"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
