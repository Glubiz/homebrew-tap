class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.19.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.19.0/zirv-2.19.0-macos.tar.gz"
    sha256 "887e0f76b2a533c7a6ec1994ed2500e3062838558408bd4a0ff7548fec7e1929"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.19.0/zirv-2.19.0-linux.tar.gz"
    sha256 "ef9c6155a509cf02b47f61fe8bc5ceac17caeb763b71c93c7e7cca295a19737a"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
