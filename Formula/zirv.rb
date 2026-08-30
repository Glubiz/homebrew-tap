class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.37.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.37.0/zirv-2.37.0-macos.tar.gz"
    sha256 "9431d3159d21bb1a8403b3840e84c154b67765ab46f226b8944fd912686a1abf"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.37.0/zirv-2.37.0-linux.tar.gz"
    sha256 "cb7be7a5697373d6250b2b3ea5827354b4e47687eecc1c0c1c52b77fc53dad39"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
