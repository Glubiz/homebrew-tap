class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.0.2/zirv-2.0.2-macos.tar.gz"
  sha256 "35ecfd64bd51e8207eda5af9162271c6a3574de37d8f27719191068a06c3dc23" # This will be updated automatically by your update script
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
  
