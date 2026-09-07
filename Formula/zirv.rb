class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.26.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.26.0/zirv-3.26.0-macos.tar.gz"
    sha256 "a3dc358db776b4c2abc9ce90711c25a9de97ddad8aeb01a41fd0751433ec5729"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.26.0/zirv-3.26.0-linux.tar.gz"
    sha256 "ce64315b3cd7de339a8f5ab736cf8e9cefbeb48e213bf911a275f90780204fed"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
