class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.39.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.39.0/zirv-2.39.0-macos.tar.gz"
    sha256 "5f946a1f60f5aebe6e5ce54c79686ededc4fb2b98af79cf6b98b2b9caf6c380f"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.39.0/zirv-2.39.0-linux.tar.gz"
    sha256 "2aa90a62f2f842c1c5fcdc7fe8d1312942b7f1f06dac7198bfe911053153d554"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
