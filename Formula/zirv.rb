class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.18.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.18.0/zirv-3.18.0-macos.tar.gz"
    sha256 "ae23a2f10edb93ce4bf55a87262e4023dcf7ae2bbb8f6b481a5e55544987a440"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.18.0/zirv-3.18.0-linux.tar.gz"
    sha256 "2835f1a89f5a48c95f77cff308644ee1e33db8da206a7bd736a872522e004fc5"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
