class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.2/zirv-2.0.2-macos.tar.gz"
  sha256 "af4c4a7e0d037fda02f9edf6c18c7e33006ae8f561b33e5dc732320e0ec045ad" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.2"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  