class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.22.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.22.0/zirv-2.22.0-macos.tar.gz"
    sha256 "70c890f6dcc628e77d3752a068dafc5ddc712795ace0a157d3856a1e8e3f4edf"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.22.0/zirv-2.22.0-linux.tar.gz"
    sha256 "4f7e7dfabf0cc9c6190c780e07748ad2a459a085a58a90047c1d2e223253e6cd"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
