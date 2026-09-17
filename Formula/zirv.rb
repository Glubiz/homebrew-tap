class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.5.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.5.0/zirv-4.5.0-macos.tar.gz"
    sha256 "06d7a379ae032aff054d821cfd1ec0fcdd7763bc858b7bbc8133641172749ad5"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.5.0/zirv-4.5.0-linux.tar.gz"
    sha256 "b57cc7fad7c98a54ea6f4b55fa31cf476113ad921a116c002170a1b758f86c57"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
