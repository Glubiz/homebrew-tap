class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.5.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.5.0/zirv-3.5.0-macos.tar.gz"
    sha256 "ee12640df4a2ef67b4001287fbd83d73e646cfd77e5ea259830ab14a4b55c87e"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.5.0/zirv-3.5.0-linux.tar.gz"
    sha256 "430e5fe201e8497cbf1059f132f0d9681144efe59e34ccd1e00440ba8a52ea43"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
