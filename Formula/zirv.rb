class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.8.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.8.0/zirv-3.8.0-macos.tar.gz"
    sha256 "c7517b63821672c66202915b17151860e3c195cb9588c6b5e1a4bda1df5b99ac"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.8.0/zirv-3.8.0-linux.tar.gz"
    sha256 "d05739f9ab37ebd6e4494a5a3ba84359b1a2472e5887cd8615f45fef57868f86"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
