class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.7.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.7.0/zirv-2.7.0-macos.tar.gz"
    sha256 "8b2f28410b671067f1dc41387bbcf38a56835b6e8da1de8b7961723c0ed05821"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.7.0/zirv-2.7.0-linux.tar.gz"
    sha256 "db3d54c258b58d131822c40eb35daa5436f1363289864e0003db1a9805212de6"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
