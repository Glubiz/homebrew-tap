class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.25.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.25.0/zirv-2.25.0-macos.tar.gz"
    sha256 "dffd31e5f839eee0da28f5010df43226ea07cded5a99e71c091fdea577ccc2e2"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.25.0/zirv-2.25.0-linux.tar.gz"
    sha256 "339b8db9b1b422fdc73855b960f4c97dc529484a922866744e00894373fd92f5"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
