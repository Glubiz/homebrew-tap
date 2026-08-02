class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.5.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.5.1/zirv-2.5.1-macos.tar.gz"
    sha256 "218db85e73df8ade6fe86b1a398caa870d745c2e548c1f81906e59322c138ba4"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.5.1/zirv-2.5.1-linux.tar.gz"
    sha256 "a767d500f0999cd5f7076a9f80e53d56ae29a749a9fd452e3786f3453710450e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
