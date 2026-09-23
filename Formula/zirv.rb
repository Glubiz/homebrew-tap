class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.23.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.23.0/zirv-4.23.0-macos.tar.gz"
    sha256 "19a6b73eaf1b549d367b1dd7819c9248a01c83e0b9d983d6e4edcbd75b33bb6f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.23.0/zirv-4.23.0-linux.tar.gz"
    sha256 "b092b696fa67798bfd03edefc0d78eb7af7b41a0e1524133760fcc4674168bae"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
