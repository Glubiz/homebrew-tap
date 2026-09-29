class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.41.7"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.7/zirv-4.41.7-macos.tar.gz"
    sha256 "66b41fdda871fe02d84ad0bc1b7cdac31bea121b925affa3e4e67cff854034f3"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.41.7/zirv-4.41.7-linux.tar.gz"
    sha256 "4ab763570108f104d579f88e0318c11f069b36eb4ea3b8bdd5965db39bb05dd4"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
