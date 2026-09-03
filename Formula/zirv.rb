class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.15.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.15.0/zirv-3.15.0-macos.tar.gz"
    sha256 "8044eb323f745356faa579b18e8b3327f7469240a8a64a3577b465d9a33f5ade"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.15.0/zirv-3.15.0-linux.tar.gz"
    sha256 "8553fe16e6f8486a9e2607ac8ded48ed970b92ce77967d8d2595220cd563b988"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
