class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.42.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.42.0/zirv-4.42.0-macos.tar.gz"
    sha256 "2fa6ced7712001c57cb0a835eaff308d56877aee622244e599dc47df21fc4685"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.42.0/zirv-4.42.0-linux.tar.gz"
    sha256 "32a4c452bd49a627aefcd5bf743a7ff7c1c6e750fcdf3ae0594589f2440b7fff"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
