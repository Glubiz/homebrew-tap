class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.26.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.26.1/zirv-2.26.1-macos.tar.gz"
    sha256 "9257c650d2fc7eeb1c28dab73d4e498a35896327e80316b217b4f79b3f7c2c94"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.26.1/zirv-2.26.1-linux.tar.gz"
    sha256 "c128297894ccc23027ad0531f7118cc13231906d7c6db691acfe87f238f8e50b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
