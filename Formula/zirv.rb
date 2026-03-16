class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.2.0/zirv-2.2.0-macos.tar.gz"
  sha256 "e956bf8f6df69c1030c016f1f3a1338a77e5dd2f918c16ad01a5db915dd35e34" # This will be updated automatically by your update script
    license "MIT"
  version "2.2.0"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
