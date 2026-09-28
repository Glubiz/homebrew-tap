class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.1/zirv-4.41.1-macos.tar.gz"
    sha256 "456c16c3bb4e169499b875427c16835b89c81ae4624ad5a7cd96c892d2b7bf6b"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.1/zirv-4.41.1-linux.tar.gz"
    sha256 "5622721f8c81fcecba49037be5fbdc1a2b5b799900c77c1fa80fab67ebf7ac4d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
