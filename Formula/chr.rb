class Chr < Formula
  desc "Look up Unicode characters"
  homepage "https://github.com/pemistahl/chr"
  version "1.0.0"
  license "Apache-2.0"

  url "https://github.com/pemistahl/chr/releases/download/v#{version}/chr-v#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "da21d6d21f4460c711c1f546670c9a48765630271894ae00290fae6dab870bda"

  livecheck do
    url "https://github.com/pemistahl/chr/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "chr"
  end
end
