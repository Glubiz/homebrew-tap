class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.39.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.39.1/zirv-2.39.1-macos.tar.gz"
    sha256 "e897e45d80f7741503d6c3944e7851b86a268c78dadab8816e79a963f6da3701"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.39.1/zirv-2.39.1-linux.tar.gz"
    sha256 "7cab58c12c3419c529712debc6e87989513167f5e2c703e2bfe37d6f33b1606c"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
