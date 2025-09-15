class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.6/zirv-2.0.6-macos.tar.gz"
  sha256 "2c0d97d6546ad15f28e1dbb7bb108eb049fa1792cfe4ae66cc4f339107a5b7a3" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.6"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
