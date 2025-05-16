class Zirv < Formula
    desc "Dynamic CLI tool to streamline tasks and boost productivity"
    homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v0.7.4/zirv-0.7.4-macos.tar.gz"
  sha256 "3af78676cd7aea3fff288614ddfa634fd43c3407d8c041027b43f1a2acddddf7" # This will be updated automatically by your update script
    license "MIT"
  version "0.7.4"
  
    def install
      # Assumes that the tar.gz archive contains a binary named "zirv"
      bin.install "zirv"
    end
  
    test do
      # Checks that the binary runs and prints its version.
      system "#{bin}/zirv", "--version"
    end
  end
  