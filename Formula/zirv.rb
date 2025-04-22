class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.6.3/zirv-macos-latest.tar.gz"
    sha256 "7afbedcbfbc9d97af444bb49168df42c444793f134899c1ad39c214ce208e172" # This will be updated automatically by your update script
    license "MIT"
    version "0.6.3"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  