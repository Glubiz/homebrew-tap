class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.3/zirv-2.0.3-macos.tar.gz"
  sha256 "274e6b5e521ad3f480e88b4c203bc525d9d19882e9f2d4d0bc85fc9a1c222945" # This will be updated automatically by your update script
    license "MIT"
  version "2.0.3"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  
