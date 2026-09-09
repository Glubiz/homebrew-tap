class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.37.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.37.0/zirv-3.37.0-macos.tar.gz"
    sha256 "0d84e5948c15db387ad0b1510066a33a62aa42e057e9fc2b4377e8d9d1c8d53a"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.37.0/zirv-3.37.0-linux.tar.gz"
    sha256 "42cf5c5ad9edde2e2691d184fcb300eec8ba9cd276b38c1b52902e1ce113f963"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
