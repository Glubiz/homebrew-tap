class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.0/zirv-4.41.0-macos.tar.gz"
    sha256 "15956a18c47a58a987bd3d34bf5966d4402e35ca37c980a5576220b09fdead86"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.0/zirv-4.41.0-linux.tar.gz"
    sha256 "4759e1f6ae7258b687a856ea495e6b14378a95e587f00abe778ec01a005b0294"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
