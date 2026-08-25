class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.27.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.27.0/zirv-2.27.0-macos.tar.gz"
    sha256 "9544167adfd63e0f69af6f1dc32fb0442838bd7fbafa7fc0db5e8128dd7a77ca"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.27.0/zirv-2.27.0-linux.tar.gz"
    sha256 "2fbb20cdaaaf152214894a5318e68418e5a5791bec505ef072556bdedfaac47d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
