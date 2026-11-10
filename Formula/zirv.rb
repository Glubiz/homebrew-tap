class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.69.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.69.0/zirv-4.69.0-macos.tar.gz"
    sha256 "7b34164bc34a0c0e5c41f95348bbfa260f2da5cbe21d9baef7576ae8a631483c"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.69.0/zirv-4.69.0-linux.tar.gz"
    sha256 "505e11b94d98323a69e76ab01972c7bf4a567b0e1cbfd6d5d5b68493475ef273"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
