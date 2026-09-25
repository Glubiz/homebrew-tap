class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.29.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.29.0/zirv-4.29.0-macos.tar.gz"
    sha256 "468797b9e19674c5a1a1b1b4eee48389a4614f91a14b09832075c56b9da40da3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.29.0/zirv-4.29.0-linux.tar.gz"
    sha256 "4632890345e4bfe7abfcfd3817d5d956c253db4d1558dd56acb6185f5572e235"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
