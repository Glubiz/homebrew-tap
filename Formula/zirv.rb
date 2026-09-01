class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.4.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.4.0/zirv-3.4.0-macos.tar.gz"
    sha256 "9d841a3fc0eae7418d0a2ed52834a6e0baf823c575ff74ff13caa196b056933b"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.4.0/zirv-3.4.0-linux.tar.gz"
    sha256 "61faf72e5eda8576e2aea72760882f1a131b4e778bee9ea563398c106751242f"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
