class Mdconv < Formula
  desc "Convert Markdown documents"
  homepage "https://github.com/Palexer/mdconv"
  version "0.8"
  license "MIT"

  url "https://github.com/Palexer/mdconv/releases/download/v#{version}/mdconv-darwin-amd64.zip"
  sha256 "2964dddc543f908712015f8568e4b5d320a852ed007886e5731cc6f5e059c1e5"

  livecheck do
    url "https://github.com/Palexer/mdconv.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "mdconv"
  end
end
