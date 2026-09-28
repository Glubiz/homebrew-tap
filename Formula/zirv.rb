class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.5"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.5/zirv-4.41.5-macos.tar.gz"
    sha256 "d6aeb2a55d17efb8faf86fedad1cd769351d05b258edde458ff0663c8d9f2da7"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.5/zirv-4.41.5-linux.tar.gz"
    sha256 "bb0c741ada514729aa639a68c1f20a8dd1664981e73fd00157f7e45b128cceb3"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
