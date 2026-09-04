class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.16.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.16.0/zirv-3.16.0-macos.tar.gz"
    sha256 "dcaf2ecfffdf76ffa9d562372843fb399d523735168bc11db55f8e4c9ef5f6bb"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.16.0/zirv-3.16.0-linux.tar.gz"
    sha256 "3d643b4371729d5b0ea4594aa9a6ad07b2f924d26f5fd83bc65abb7c2dd75fa2"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
