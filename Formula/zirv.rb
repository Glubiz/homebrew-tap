class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.47.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.47.0/zirv-3.47.0-macos.tar.gz"
    sha256 "68b0554e57c6753470a06164a9b560298a0c3b573dda0848783cb130b5f76ee3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.47.0/zirv-3.47.0-linux.tar.gz"
    sha256 "a588c2c4da3b0d55f2a88f60da699d0c81fccb29b1eff5a0342873b5c0dbaaa6"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
