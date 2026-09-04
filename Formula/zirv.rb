class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.19.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.19.0/zirv-3.19.0-macos.tar.gz"
    sha256 "49fd5f57a7355e29fb6ed68188b380918f47cb6e7efd603a26b289deef3a159c"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.19.0/zirv-3.19.0-linux.tar.gz"
    sha256 "4fce9b7115211e13b33c60e54e9fc1e91f9bd35f0902bebd4e47270ddff0fa17"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
