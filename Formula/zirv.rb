class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.31.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.31.0/zirv-3.31.0-macos.tar.gz"
    sha256 "a75bd584d1bee1a1ccf4e3ffa23b50a63947a865f842dc1a9ce3c72d5111d83f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.31.0/zirv-3.31.0-linux.tar.gz"
    sha256 "1aaa7e1e0e15ea629d579d83d8ee48ca38e810285d5082fc7417861600f71b45"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
