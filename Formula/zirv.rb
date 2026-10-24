class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.65.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.65.1/zirv-4.65.1-macos.tar.gz"
    sha256 "3f3776b2aaedda0a82a2f8eb8b48a6cc0de1740de5721bce394e4c325a38242f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.65.1/zirv-4.65.1-linux.tar.gz"
    sha256 "0cc8cc59fb5b7b2e5f69421e8d6930326b1c5c2ad169d733971256ec9ca49d8e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
