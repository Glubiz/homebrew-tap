class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.7.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.7.0/zirv-3.7.0-macos.tar.gz"
    sha256 "b95cbe49ff0ae244c2c87055cf3ce091a9167a402a13b3c121076dc1440ec7ee"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.7.0/zirv-3.7.0-linux.tar.gz"
    sha256 "5503e8326587efd17379fbceaf86c5679f4ddfcacc96be4f187ef1950082d1be"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
