class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.12.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.12.0/zirv-3.12.0-macos.tar.gz"
    sha256 "2f615f17ccd030c571a825fa8f48af356c49b7a6c88687af43946a89a4a748f7"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.12.0/zirv-3.12.0-linux.tar.gz"
    sha256 "baffacc56ad006067f8663425a5ab0f9681152915f23f3f66a13d0081491a409"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
