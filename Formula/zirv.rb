class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.5.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.5.0/zirv-2.5.0-macos.tar.gz"
    sha256 "d67aafaa9bf67d58e85be4ad4d7744659dbec0f2c0bf6a1bf2e58f172438de49"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.5.0/zirv-2.5.0-linux.tar.gz"
    sha256 "500ea091d105be9ee9030a69d97c79ccabf456f2d97879c98283181b07386453"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
