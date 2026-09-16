class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.2.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.2.0/zirv-4.2.0-macos.tar.gz"
    sha256 "6d038ceb9c37ef9199a17a7fd3bbf3591fedf6479d961265564514f60fd6f8c0"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.2.0/zirv-4.2.0-linux.tar.gz"
    sha256 "11c96b95ef12d3da89a73ba1ec1ed6d7db0546fd3a2001bb4271468e6fec1098"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
