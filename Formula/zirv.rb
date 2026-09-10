class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.44.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.44.0/zirv-3.44.0-macos.tar.gz"
    sha256 "a5108d0cc5724bb5d862e29427c809d2a12bb6914a004b557654d547a1d25235"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.44.0/zirv-3.44.0-linux.tar.gz"
    sha256 "af2068ca03cd22d9808919a0dc6539664b52bf33f84e94041065093187a9a2e9"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
