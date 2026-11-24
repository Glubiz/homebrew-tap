class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.76.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.76.0/zirv-4.76.0-macos.tar.gz"
    sha256 "a1f6e9047709ac89e1c536ce0005bb2b95b97fc4fc9b6c4216a0e5dfb92e73d2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.76.0/zirv-4.76.0-linux.tar.gz"
    sha256 "d4a7d8316e982c966741aa9318fbb7047b095676e1d4994aab0a2254fa2ffb78"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
