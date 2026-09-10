class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "3.46.1"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.46.1/zirv-3.46.1-macos.tar.gz"
    sha256 "c1cd6e9bf5758b24803ea464901422c7ec842f0549876f3d934dfe0640cee2fa"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v3.46.1/zirv-3.46.1-linux.tar.gz"
    sha256 "4b04173422b4e24f744e50c9745ad8992faa4f1a6e44118583ecf07eb0b0e330"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
