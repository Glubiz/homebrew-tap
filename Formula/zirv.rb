class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "3.14.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.14.0/zirv-3.14.0-macos.tar.gz"
    sha256 "b98a16c34c323a4b5306a1a8fffe9a20462e4c7619fc8750db7a79fa9cb436ec"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v3.14.0/zirv-3.14.0-linux.tar.gz"
    sha256 "b412e832477f0feb96e950376a0789940384d67c489c2150590d3e74e0afc893"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
