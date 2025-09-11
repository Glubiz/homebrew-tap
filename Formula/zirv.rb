class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.5/zirv-2.0.5-macos.tar.gz"
  sha256 "1111815a345315be1c0b751baa06ce1ab9c6ac2dd129858dd7dec39d26adf91d" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.5"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
