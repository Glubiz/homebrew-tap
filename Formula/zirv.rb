class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.10.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.10.0/zirv-3.10.0-macos.tar.gz"
    sha256 "53c33474ec1cc971cfed9c992e266e1280105c4891ae1402241b536e50986d89"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.10.0/zirv-3.10.0-linux.tar.gz"
    sha256 "ad27e5dd1e0dae7970302ce5f9bb4ef06bc88ed297592b7ba3252e3507cdffcc"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
