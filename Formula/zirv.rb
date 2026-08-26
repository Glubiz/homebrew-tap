class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.30.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.30.1/zirv-2.30.1-macos.tar.gz"
    sha256 "36340bd20b7e855491c660130c6a837926e0ffff25429ec91121ffa83658f604"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.30.1/zirv-2.30.1-linux.tar.gz"
    sha256 "d95e3f86c60472b026c1a7b0d4910f20f0aa905acae09ea1beffb5f4636e744c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
