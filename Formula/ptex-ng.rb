class PtexNg < Formula
  desc "Asiatic pTeX typesetting engine"
  homepage "https://github.com/clerkma/ptex-ng"
  url "https://github.com/clerkma/ptex-ng/releases/download/master-36986011265/aptex-macos-universal", using: :nounzip
  version "36986011265"
  sha256 "bc911dceb9058caccdbf27109d611bd827320b1a1193f285fcd3443e2efe7697"
  license "Unlicense"

  livecheck do
    url "https://github.com/clerkma/ptex-ng.git"
    regex(/^master-(\d+)$/i)
    strategy :git
  end

  depends_on :macos

  def install
    bin.install "aptex-macos-universal" => "aptex"
    chmod 0755, bin/"aptex"
  end
end
