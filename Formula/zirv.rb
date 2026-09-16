class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.3.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.3.0/zirv-4.3.0-macos.tar.gz"
    sha256 "ed3c3c2761ce0f5708c050ec134be5e2fce986efb77f8d986cbed1f8072b45ad"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.3.0/zirv-4.3.0-linux.tar.gz"
    sha256 "d7a28f25f744264a99f1c9a68550778b76233d8466345ba19a35f7e089a55a08"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
