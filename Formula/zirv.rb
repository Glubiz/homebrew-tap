class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.6.3/zirv-macos-latest.tar.gz"
    sha256 "f54012504d80deada765c0923029ecc25931cdc9b2aff8b183ae6a2992449f16" # This will be updated automatically by your update script
    license "MIT"
    version "0.6.3"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  