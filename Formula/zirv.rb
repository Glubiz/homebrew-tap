class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.28.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.28.0/zirv-2.28.0-macos.tar.gz"
    sha256 "17281ea6e576dab6746899bbbaaad5e73c70a2944e7d85a2496ee15546ab1369"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.28.0/zirv-2.28.0-linux.tar.gz"
    sha256 "4824b382836656946f64dd3003036530b98919184c4f24aea1f7914e40d91353"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
