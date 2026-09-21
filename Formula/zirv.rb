class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.13.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.13.0/zirv-4.13.0-macos.tar.gz"
    sha256 "4fc40a62a1712f5978807bf0760211462c17436296bfc6b18fce773d85409ac6"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.13.0/zirv-4.13.0-linux.tar.gz"
    sha256 "ca4f484f35c96e8da4bb2822146d31b7b65adb251c0fb143854f1e648192d28d"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
