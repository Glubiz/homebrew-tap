class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.53.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.53.0/zirv-4.53.0-macos.tar.gz"
    sha256 "311e492429d94f36eb38eb1dd7ffb8f94a3bcd7e2847dd6401701375fff02777"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.53.0/zirv-4.53.0-linux.tar.gz"
    sha256 "501346eded13d6716f90d686839647ebe8a9e6c60c5070aff7bbd4c0ec2bc5df"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
