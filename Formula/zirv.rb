class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.40.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.40.0/zirv-4.40.0-macos.tar.gz"
    sha256 "24e756922858849bc360bd50047af49289f647d853842bc8d023d6fbe8e991f3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.40.0/zirv-4.40.0-linux.tar.gz"
    sha256 "cc28f0b567c27afd12b4d5023886828108415c7ab29d374f1b203365c7cbb927"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
