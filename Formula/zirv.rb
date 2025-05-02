class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.7.2/zirv-0.7.2-macos.tar.gz"
  sha256 "71988b728c167d44ce69ca73ec147b0642e572fa85d947735b87867ee52230b2" # This will be updated automatically by your update script
    license "MIT"
  version "0.7.2"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  