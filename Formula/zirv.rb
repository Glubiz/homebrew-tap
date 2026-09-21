class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.14.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.14.0/zirv-4.14.0-macos.tar.gz"
    sha256 "17e6fc0572e462a7004a9b68368b20ea560c623d2d83963c158799a8b8394afd"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.14.0/zirv-4.14.0-linux.tar.gz"
    sha256 "f43e6dd2f31c8ea5f178319f8b7306d7f29d95d1c85499fae351f4f3ae7d5466"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
