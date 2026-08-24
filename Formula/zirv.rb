class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.25.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.25.1/zirv-2.25.1-macos.tar.gz"
    sha256 "5233a185b3db4db5ece55becdd4ff8e99d9aa674275689f7a625cc5675db67c2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.25.1/zirv-2.25.1-linux.tar.gz"
    sha256 "60509074ee0736c8e155e74b0f35d4eeef85ee96f5b7b5f872201c289535216b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
