class Cranko < Formula
  desc "Automate releases across multi-project repositories"
  homepage "https://github.com/pkgw/cranko"
  version "0.17.3"
  license "MIT"

  on_arm do
    url "https://github.com/pkgw/cranko/releases/download/cranko%40#{version}/cranko-#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "e08e55ce8198c8affd9f8466eddebce236727011a25faa94252122bd843e9a5a"
  end

  on_intel do
    url "https://github.com/pkgw/cranko/releases/download/cranko%40#{version}/cranko-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "4bc853c6ef26aaad1e1af70bf450471fb888ee0f81513d420df21b3878319714"
  end

  livecheck do
    url "https://github.com/pkgw/cranko/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "cranko"
  end
end
