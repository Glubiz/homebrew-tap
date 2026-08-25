class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.25.2"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.25.2/zirv-2.25.2-macos.tar.gz"
    sha256 "434b65557b5d219b8af7520319a2379f461c1d66e30f357e43b7091ee8c75565"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.25.2/zirv-2.25.2-linux.tar.gz"
    sha256 "ddd6f44c2950ccac0a37f33aec2389f1a363809d732d89e2ddcc192e81b77da1"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
