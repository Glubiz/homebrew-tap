class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.6.5/zirv-0.6.5-macos.tar.gz"
  sha256 "badf3a0846a6366e9c1c3ca1012d40af886738ec17dac85e0cf2ae1e01307bef" # This will be updated automatically by your update script
    license "MIT"
  version "0.6.5"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  