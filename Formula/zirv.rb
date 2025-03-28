class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.6.2/zirv-macos-latest.tar.gz"
    sha256 "43d1476a4a1d1d8deda144daf434d72eb36a3efcebd2a680fbc06f9ffcd56cd7" # This will be updated automatically by your update script
    license "MIT"
    version "0.6.2"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  