class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.9.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.9.0/zirv-4.9.0-macos.tar.gz"
    sha256 "e3e2a3cb44747f56d63861377aca11eaef15d77830cbca73d88a03965e3116af"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.9.0/zirv-4.9.0-linux.tar.gz"
    sha256 "7490b082696e965032feb0c8763c8e6aef6ea1d6847bcc1e9ba31be0829cb81b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
