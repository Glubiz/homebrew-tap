class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v1.0.0/zirv-1.0.0-macos.tar.gz"
  sha256 "91c490caa6f5bfd4879c2d51aa313b9da2517e046c7255220b0e86e61fb2c266" # This will be updated automatically by your update script
    license "MIT"
  version "1.0.0"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  