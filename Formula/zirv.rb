class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.69.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.69.1/zirv-4.69.1-macos.tar.gz"
    sha256 "b4ab205fafa93633ce104ff064a3f84339c64b2e229f3db43e762e4c26ea609f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.69.1/zirv-4.69.1-linux.tar.gz"
    sha256 "a96a7b115fa5bf61ead71049b97bd4fb554196e9f13e22b3f9ef13bd19ba18ea"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
