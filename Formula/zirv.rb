class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.20.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.20.0/zirv-3.20.0-macos.tar.gz"
    sha256 "64a9ffa966a88341bcb4f779a29543b602c133085f4384c6b2246b10ce973b35"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.20.0/zirv-3.20.0-linux.tar.gz"
    sha256 "a68d0712a9fbe988b2ddeb96e59216ae014dee55f2ad5923f4316fa2b2bb5ca2"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
