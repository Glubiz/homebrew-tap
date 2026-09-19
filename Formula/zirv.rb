class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.8.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.8.0/zirv-4.8.0-macos.tar.gz"
    sha256 "e3733856d2fa99b4b53370f82a07bc853eeeb965c91be4ec140b4192a5c9c135"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.8.0/zirv-4.8.0-linux.tar.gz"
    sha256 "d9f4d41bfa1d6a8c58af686f9bc274030f3611f7bc73e60f555efcc49ac1886b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
