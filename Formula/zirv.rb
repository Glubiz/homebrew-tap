class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.4"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.4/zirv-4.41.4-macos.tar.gz"
    sha256 "5a44fc5aaf2c89788dcdb6597ca37712559c4ab5812a2e9611c1ca468a1c6915"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.4/zirv-4.41.4-linux.tar.gz"
    sha256 "fcea63ea13f969fb070e09b4c4b83cec26debef0d6beedace1bffbea5846ec0e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
