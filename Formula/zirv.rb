class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.60.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.60.1/zirv-4.60.1-macos.tar.gz"
    sha256 "9f3e237a87bde649b310093098f2492be4796a57797456e9f5ccd5860163cb8d"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.60.1/zirv-4.60.1-linux.tar.gz"
    sha256 "f68343c7374162fd7ec9bfc9c2296acee72c0ccecc08e22a8b0af17a64db3fc2"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
