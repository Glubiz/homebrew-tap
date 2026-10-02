class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.43.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.43.0/zirv-4.43.0-macos.tar.gz"
    sha256 "9ac23a0df1306728745e7c9585dd150d7d56cbb41e5447435c1c60c04653d552"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.43.0/zirv-4.43.0-linux.tar.gz"
    sha256 "bb0af210603c722166450fac04e73bd9d299a98dd4d2ae373f1d48ed4a868297"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
