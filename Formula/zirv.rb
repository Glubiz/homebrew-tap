class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.10.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.10.0/zirv-2.10.0-macos.tar.gz"
    sha256 "293819de15da76038297500a5b828f29e35832b76bdc5d1d1c9c1568ca5c5a85"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.10.0/zirv-2.10.0-linux.tar.gz"
    sha256 "567ad3c853050c067da0835fc1cd860f352c49f71d619a1327a4ec37431e6f8a"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
