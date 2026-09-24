class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.27.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.27.0/zirv-4.27.0-macos.tar.gz"
    sha256 "b1c41a7b713ad077874dc97b81a41eb161419d0d1112d415ca0baccf3b5149e3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.27.0/zirv-4.27.0-linux.tar.gz"
    sha256 "d0f17fa8b4f2b8eda2560673463f82dbd91ca040eef626af88798d3fbb4160c4"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
