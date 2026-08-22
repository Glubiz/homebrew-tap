class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.20.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.20.0/zirv-2.20.0-macos.tar.gz"
    sha256 "04ba92ce343721909606e985dcf72c7f280e6fabcbf270919fb77a28c783a2c7"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.20.0/zirv-2.20.0-linux.tar.gz"
    sha256 "0d496a811d1e66c9c2dc326c1218b764e71235091d050467836759d407f0eacc"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
