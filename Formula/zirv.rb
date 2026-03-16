class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.3.0/zirv-2.3.0-macos.tar.gz"
  sha256 "480d60ab4289c3b688bcffff3fe69643f27fe03fbcddc663d2c3f9fff324e31b" # This will be updated automatically by your update script
    license "MIT"
  version "2.3.0"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
