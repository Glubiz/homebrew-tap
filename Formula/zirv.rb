class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.1/zirv-2.0.1-macos.tar.gz"
  sha256 "97fa5e076940e0435e56182e4323bb77d0a34c4aa1d807083de7425adeddfa72" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.1"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  