class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.48.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.48.0/zirv-3.48.0-macos.tar.gz"
    sha256 "cec3a275c103e7768ca2a207a467a32029955f633ec05e1e915a0f52609a1e5a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.48.0/zirv-3.48.0-linux.tar.gz"
    sha256 "df3b500355ec764d365be383753b47a10bcd3558e7c4174adf3352b8ef3b1ed8"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
