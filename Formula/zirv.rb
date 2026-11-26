class Zirv < Formula
  desc "Dynamic CLI tool to streamline tasks and boost productivity"
  homepage "https://github.com/Glubiz/zirv-cli"
  license "MIT"
  version "4.78.0"

  if OS.mac?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.78.0/zirv-4.78.0-macos.tar.gz"
    sha256 "823e09cac17fe70595652125f2261dc6484a985cb753ead921755865eb0836af"
  elsif OS.linux?
    url "https://github.com/Glubiz/zirv-cli/releases/download/v4.78.0/zirv-4.78.0-linux.tar.gz"
    sha256 "5bf68ba2cac950dae4791bd637ffeaefab4e9068a63011500905e3a2f28b2242"
  end

  def install
    bin.install "zirv"
  end

  test do
    system "#{bin}/zirv", "--version"
  end
end
