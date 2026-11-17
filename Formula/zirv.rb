class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.72.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.72.1/zirv-4.72.1-macos.tar.gz"
    sha256 "79b5174f41c4208e9f0f616a0ec8f08f97b9a4fff9cdd849ada7183fc12e65b9"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.72.1/zirv-4.72.1-linux.tar.gz"
    sha256 "00ae3690650190e2aad73cbf445bd4627f53c59689595b83858a71705955b66a"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
