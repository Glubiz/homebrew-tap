class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.35.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.35.0/zirv-2.35.0-macos.tar.gz"
    sha256 "ea8188d0723c954d3cf1c3d5a492b9dd24a7b37d7bbeadcc2613c4c8461060e4"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.35.0/zirv-2.35.0-linux.tar.gz"
    sha256 "f750f66cada1e10c36d0c3882bffc198cfd995320375d264f46f4e576edfdee6"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
