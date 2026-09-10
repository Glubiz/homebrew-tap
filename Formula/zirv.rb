class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.43.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.43.0/zirv-3.43.0-macos.tar.gz"
    sha256 "d186afab63e2928d999cecab23fe5b9b2a1049c3df8bb6ec802273d8b357f065"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.43.0/zirv-3.43.0-linux.tar.gz"
    sha256 "3058ea1dd0582310cbcff9148573dd15e88843eabfe0c4db3a0a50596ed0c662"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
