class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.4/zirv-2.0.4-macos.tar.gz"
  sha256 "127b97ee7c85e89607acf520c4a365f19a6851a7fb3d72396dfbb2c4407cd03e" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.4"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
