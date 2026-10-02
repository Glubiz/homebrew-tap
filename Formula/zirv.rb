class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.45.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.45.0/zirv-4.45.0-macos.tar.gz"
    sha256 "695e85f54f5b33ac0267ce63001b6f7320abdd854196241030458bfa8c0fdebb"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.45.0/zirv-4.45.0-linux.tar.gz"
    sha256 "d46faa74e2f75ec1768c266f4d233754d03aa709dd2b86e5d248b3af1db6bce6"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
