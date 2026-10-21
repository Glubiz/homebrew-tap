class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.64.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.64.0/zirv-4.64.0-macos.tar.gz"
    sha256 "fd73b1ffc5d30208d01aaa88ec1bc975ad8a248f61159ec4700d043dd6c47a99"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.64.0/zirv-4.64.0-linux.tar.gz"
    sha256 "65d597b3b4144400094a022318463c089912d19950e7edfeca4ec140bf271e4a"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
