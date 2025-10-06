class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.8/zirv-2.0.8-macos.tar.gz"
  sha256 "871a4937db090e9bdcec80b7129176e4208c6da1ff650cb4c88cb1b4b747f905" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.8"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
