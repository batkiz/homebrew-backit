class Yarr < Formula
  desc "Self-hosted RSS reader"
  homepage "https://github.com/nkanaev/yarr"
  version "2.9"
  license "MIT"

  on_arm do
    url "https://github.com/nkanaev/yarr/releases/download/v#{version}/yarr_darwin_arm64.zip"
    sha256 "ba98b6d849a719d8517a85dbc06cc9ad33e10be2098a84fcc435fadba96962b0"
  end

  on_intel do
    url "https://github.com/nkanaev/yarr/releases/download/v#{version}/yarr_darwin_amd64.zip"
    sha256 "716d835c7c676bc71858cdabcf5a27a8dec0ed253dae0f4a99cc7d8ef31c00ff"
  end

  livecheck do
    url "https://github.com/nkanaev/yarr/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "yarr"
  end
end
