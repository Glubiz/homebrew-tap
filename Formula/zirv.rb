class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-dynamic-cli"
  license "MIT"
  version "2.32.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.32.0/zirv-2.32.0-macos.tar.gz"
    sha256 "83db4debbf2b97011de8f328611cd3d73b9e44e3d4746f3ae34102171ed169ff"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-dynamic-cli/releases/download/v2.32.0/zirv-2.32.0-linux.tar.gz"
    sha256 "ced339c5eb12e431944f429296f80062ac70d7498464bb97392a2cc0e30df13b"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
