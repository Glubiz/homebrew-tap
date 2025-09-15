class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.7/zirv-2.0.7-macos.tar.gz"
  sha256 "6a351cbc3c42d1f9492da9a0ae415b73e77ae9f89ed10c419a8a6903f3b0eccd" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.7"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
