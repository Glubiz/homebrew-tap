class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.3.0/zirv-2.3.0-macos.tar.gz"
  sha256 "884dc3608cd93df02942aad723ce61a5410eb85389e978587596bc2de8f6f730" # This will be updated automatically by your update script
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
  
