class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.6.4/zirv-macos-latest.tar.gz"
    sha256 "c5fbef03b939f7c88c7272c24a101cfc8b8540f668d7aac43e3877d4c1db83c7" # This will be updated automatically by your update script
    license "MIT"
    version "0.6.4"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  