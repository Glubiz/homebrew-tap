class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.75.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.75.0/zirv-4.75.0-macos.tar.gz"
    sha256 "f918660cc324d425999f3ff402d5f39f2ea1da10e2cfaa3c289571631732df6d"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.75.0/zirv-4.75.0-linux.tar.gz"
    sha256 "1734b50def10932ba28f42a82405231fe5d236232d24986788aaf3aa3004485c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
