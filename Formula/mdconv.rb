class Mdconv < Formula
  desc "Convert Markdown documents"
  homepage "https://github.com/Palexer/mdconv"
  version "0.9"
  license "MIT"

  on_arm do
    url "https://github.com/Palexer/mdconv/releases/download/v#{version}/mdconv-darwin-arm64.zip"
    sha256 "0ecf391a9fc2cee60757cdc07b4a5a26337352cf71d9853f5ad5c586ac39d047"
  end

  on_intel do
    url "https://github.com/Palexer/mdconv/releases/download/v#{version}/mdconv-darwin-amd64.zip"
    sha256 "b4376ccd1be4e448094df179160c36ec1ae70f3a62c51e21703559677dc8ccda"
  end

  livecheck do
    url "https://github.com/Palexer/mdconv.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on :macos

  def install
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"
    bin.install "dist/darwin/#{arch}/mdconv"
    man1.install "doc/mdconv.1"
  end
end
