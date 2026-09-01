class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.6.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.6.0/zirv-3.6.0-macos.tar.gz"
    sha256 "58b8b65fd79d9b51f2ca3532c97bc46771c70905e8b616d2f5235bf3bfdd752c"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.6.0/zirv-3.6.0-linux.tar.gz"
    sha256 "fc422f4e1aa8b3ce6b06fd350b8ace2b0f9285ed910ecc51864bf8e0e2a90618"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
