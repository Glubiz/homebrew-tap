class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.16.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.16.0/zirv-4.16.0-macos.tar.gz"
    sha256 "7db105ac8855b62d906d2986180cc5bd411b41ce120c858456238c63ee661081"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.16.0/zirv-4.16.0-linux.tar.gz"
    sha256 "cab36719e78020876f598bb2d5558afb7bf63510cff84f883c10f8adcc0dd70d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
