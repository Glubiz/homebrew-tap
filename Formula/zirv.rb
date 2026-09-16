class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.4.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.4.0/zirv-4.4.0-macos.tar.gz"
    sha256 "917fd34970277a46ee89fcbd6187c445b4a02beee52c8c04b36ef482daa965a2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.4.0/zirv-4.4.0-linux.tar.gz"
    sha256 "56a17fb3e104da90f646a2c9349361e39489d9757a1f37248ec83c2ecdb43c9c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
