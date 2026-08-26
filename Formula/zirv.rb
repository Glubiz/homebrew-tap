class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.29.3"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.29.3/zirv-2.29.3-macos.tar.gz"
    sha256 "2c4b910913d0caa932476597db5b63bb3cc7bf63f5070081f738525beb6edc01"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.29.3/zirv-2.29.3-linux.tar.gz"
    sha256 "6e8545bdbf3882a56640efdcb56d1175659acc0e4416a76dcc37d860b724fcf6"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
