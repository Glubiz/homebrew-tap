class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.6.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.6.0/zirv-2.6.0-macos.tar.gz"
    sha256 "8e2e2bed302eb2a0cded6ec8d3a58e4c91015108e6b13549aecc2cb97b2b2c99"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.6.0/zirv-2.6.0-linux.tar.gz"
    sha256 "c93fed1c56602721b35222dd7ed664c35a26bd9b7e422fa807defe7961f896a0"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
