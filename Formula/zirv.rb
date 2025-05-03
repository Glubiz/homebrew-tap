class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.7.3/zirv-0.7.3-macos.tar.gz"
  sha256 "d79117d838d2c4b0e7b3af435cef802dc4851591f77330e59c68afdb12f5fd71" # This will be updated automatically by your update script
    license "MIT"
  version "0.7.3"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  