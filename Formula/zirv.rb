class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.9/zirv-2.0.9-macos.tar.gz"
  sha256 "1a20637f00713eaab51dc4954225e70e7331b01c5b369532dc837007332e88e5" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.9"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
