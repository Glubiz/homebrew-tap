class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.8"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.8/zirv-4.41.8-macos.tar.gz"
    sha256 "ca45639fd3dd356dd7b8b66cda0273dd49ce3e5ca5c576907e37b4a46c530823"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.8/zirv-4.41.8-linux.tar.gz"
    sha256 "c00fab18f900574a096a426162bb0b9820c16b84cc5532160c2560985ef0daaf"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
