class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.7.0/zirv-0.7.0-macos.tar.gz"
  sha256 "4add2b0ce802d1c160f9154f8f186b2d25ba8b2a777fb4cde2bb2dbbaa340ddb" # This will be updated automatically by your update script
    license "MIT"
  version "0.7.0"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  