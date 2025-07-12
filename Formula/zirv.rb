class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v1.0.1/zirv-1.0.1-macos.tar.gz"
  sha256 "d13104a324fe48e822a7bf4a7de7f55b95e91316aad8586c8e12ecffc4c77d24" # This will be updated automatically by your update script
    license "MIT"
  version "1.0.1"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  