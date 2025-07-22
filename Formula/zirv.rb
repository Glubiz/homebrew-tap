class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.0/zirv-2.0.0-macos.tar.gz"
  sha256 "6741b5253e1fa1f25190c98c1f4199c9601664c81089662b842b89faf187dddf" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.0"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  