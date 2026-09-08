class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.33.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.33.0/zirv-3.33.0-macos.tar.gz"
    sha256 "14f4d4a9283923c38829378ccd4cfef5c59d15ccf93c0955a2007d3fa8bdfe20"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.33.0/zirv-3.33.0-linux.tar.gz"
    sha256 "b7dfa3cb1b688e2f8a6d14b1911adabea0938b10ae9fa50588d34f0446b78972"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
