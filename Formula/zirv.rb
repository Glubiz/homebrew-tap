class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.24.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.24.0/zirv-2.24.0-macos.tar.gz"
    sha256 "0dc9ccc4d78ce090fb18139b54ffcb66b5b4f08108fd528069e4f7da5646477e"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.24.0/zirv-2.24.0-linux.tar.gz"
    sha256 "e01160f1487501dd691ab329f875f5b95377f67a74fecf8a964769a75f8d726f"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
