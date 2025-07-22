class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.0/zirv-2.0.0-macos.tar.gz"
  sha256 "5a89810867a750db0c624da4d0f125db9371869bc04674a55ba5fe3295eb2f7c" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.0"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  