class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.29.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.29.0/zirv-2.29.0-macos.tar.gz"
    sha256 "65df6413b73faed379c22c09e59b6918e8ecf7bc314d5a54abe5381ef132b25c"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.29.0/zirv-2.29.0-linux.tar.gz"
    sha256 "f8f633fec62d667af18ff98a51657d213951dd930ebd3995617145c9d4a2496e"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
