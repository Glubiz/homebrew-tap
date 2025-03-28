class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.6.2/zirv-macos-latest.tar.gz"
    sha256 "2dcc8970a5249d10191a4a5065dece25de584ee8eab1c9531f54a17cc446e629" # This will be updated automatically by your update script
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
  