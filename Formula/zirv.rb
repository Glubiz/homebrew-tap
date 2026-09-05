class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.22.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.22.0/zirv-3.22.0-macos.tar.gz"
    sha256 "51510fbaab86656746136ddd9876c6e22b6e385ac8a370cd503625f12e293c72"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.22.0/zirv-3.22.0-linux.tar.gz"
    sha256 "131249d722c388f9912c1983f8f26d124c9d24daf9ae0f70603bd2e01eccc688"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
