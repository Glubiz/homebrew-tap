class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.15.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.15.1/zirv-3.15.1-macos.tar.gz"
    sha256 "edaa0e497f5c524240f1dc76fed1e8c4d381470801d5e05961fd033ef9479922"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.15.1/zirv-3.15.1-linux.tar.gz"
    sha256 "38a1e82d6f68168d918a06ac8afa73cfb7bbe644ca474e27bd55f9c17bb1f76f"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
