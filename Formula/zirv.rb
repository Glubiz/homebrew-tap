class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.6.4/zirv-0.6.4-macos.tar.gz"
  sha256 "66497a6b20dbc9ec5478b5069421194e1d651d29c298c22000d7b1318276c188" # This will be updated automatically by your update script
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
  