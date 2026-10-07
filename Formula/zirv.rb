class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.55.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.55.0/zirv-4.55.0-macos.tar.gz"
    sha256 "57af0ca2e8ae9ea709ee1cdd202a11420ac76ddbc6bd1aca8185aebf9a497e7b"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.55.0/zirv-4.55.0-linux.tar.gz"
    sha256 "5644c8bd2b9274c95a383c9988a0eab0d8b7ba159e5425389ea099ea048fcc55"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
