class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.29.2"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.29.2/zirv-2.29.2-macos.tar.gz"
    sha256 "651e151f54065dfa53329e85b3e40ccf4c54a0efce0e25ae59807a8aa3f8b35f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.29.2/zirv-2.29.2-linux.tar.gz"
    sha256 "81b8fc08f37f20010db4547a76e0d05188286d884acd1fc7a0b9d67496d11262"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
