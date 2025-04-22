class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.6.4/zirv-0.6.4-macos.tar.gz"
  sha256 "afa6aa68ada7b9c324641aa947976b43c96b1e4e44c49e3c083e8d6df3f10e7a" # This will be updated automatically by your update script
    license "MIT"
  version "0.6.4"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  