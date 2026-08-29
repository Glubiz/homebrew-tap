class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.36.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.36.0/zirv-2.36.0-macos.tar.gz"
    sha256 "85bee1c524b27551396a7566c234c73bfa14f17deb50202c772f6861fe2533d9"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.36.0/zirv-2.36.0-linux.tar.gz"
    sha256 "cb718310a159c67b2cf0f386a099280c4810986011791dbe5af43f1904d96369"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
