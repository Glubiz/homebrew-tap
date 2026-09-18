class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.6.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.6.0/zirv-4.6.0-macos.tar.gz"
    sha256 "3101d772f5288fcc0fbc0f8d39b41239f555fc4186c5c784978461db2b9eafac"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.6.0/zirv-4.6.0-linux.tar.gz"
    sha256 "b8b78f5f1be93c0f4cc87f99032de4c91b91c3426ea628c9b70315fdec0f2503"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
