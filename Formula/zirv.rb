class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.44.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.44.0/zirv-4.44.0-macos.tar.gz"
    sha256 "5ef06ab4deff14c6c99a07e70f9d015f9e546fb33e0377bcefeb67287318d888"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.44.0/zirv-4.44.0-linux.tar.gz"
    sha256 "40c907981a488f9af7bff51d4dc315f6f2ce653baa8df03f570882cf8fe6f939"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
