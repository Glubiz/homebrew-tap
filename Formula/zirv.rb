class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.15.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.15.0/zirv-2.15.0-macos.tar.gz"
    sha256 "a9749a843c9130f34a124ec08de7299a3babccbaa651e666fd8e297b01ef3c04"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.15.0/zirv-2.15.0-linux.tar.gz"
    sha256 "19f4511ac99cbd922f39465cde3b059c9d6fb3c8cc8ff3daf55f2511e523d1e0"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
