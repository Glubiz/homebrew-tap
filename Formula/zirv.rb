class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.1.0/zirv-2.1.0-macos.tar.gz"
  sha256 "dc12f37993e181ffe5c226264cf592940414eb10d42c0b5aa3db37db6073a60f" # This will be updated automatically by your update script
    license "MIT"
  version "2.1.0"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
