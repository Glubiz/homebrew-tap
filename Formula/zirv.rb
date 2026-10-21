class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.64.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.64.1/zirv-4.64.1-macos.tar.gz"
    sha256 "35842edbcabb04b5ed70b225cb3e140c429f468cb496e430f49db9ec539ff1d8"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.64.1/zirv-4.64.1-linux.tar.gz"
    sha256 "d549328d873fa840fa2239c35dafaa1375eb5790fadaedf73fe17c50ebc7a3e3"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
