class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.60.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.60.0/zirv-4.60.0-macos.tar.gz"
    sha256 "4be5909a1f41a6d3fa43909b419b6135680ce81881ec77e56c77449dec8fd9bc"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.60.0/zirv-4.60.0-linux.tar.gz"
    sha256 "44e2f55bdd325288814665b7d016f58abfe2dbdef1d9a08a45e9b13c8dd9a5ba"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
