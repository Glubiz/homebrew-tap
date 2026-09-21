class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.12.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.12.1/zirv-4.12.1-macos.tar.gz"
    sha256 "de212d7370c123ad8adbb3c5b09a9dba2249cd34980770ef69fe8bbbf3eaa87e"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.12.1/zirv-4.12.1-linux.tar.gz"
    sha256 "25420a5846e8bae1269c3a88dc7451097c5ede69a851d70c15b26d035bf41a8b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
