class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.4.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.4.0/zirv-2.4.0-macos.tar.gz"
    sha256 "a9d795935adb0cb631c8d0d23b94993f19561efe745edf35a7e655d5b3092f34"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.4.0/zirv-2.4.0-linux.tar.gz"
    sha256 "f19fb557fc03df1d7d3c1f704419d1697a5ce25c7fa816a850d860367aaad245"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
