class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.28.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.28.1/zirv-2.28.1-macos.tar.gz"
    sha256 "1be5632f6e77328dc0c3d3320a83ffdb35a05f3aa124d4d926ec665654c52740"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.28.1/zirv-2.28.1-linux.tar.gz"
    sha256 "76f2765ea5fbc3bb9c31d6acc6f28ad168fe380eb54b0f146a31da0bf3885fe5"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
