cask "bitcomet" do
  version "2.23.1"
  sha256 "ecd8b198fb1b76710bb177167eea5377700bc168ec2f1c980ef499ee57ea5c24"

  url "https://download.bitcomet.com/mac/BitComet_#{version}.dmg"
  name "BitComet"
  desc "BitTorrent download client"
  homepage "https://www.bitcomet.com/"

  livecheck do
    url "https://www.bitcomet.com/en/downloads"
    regex(/data-mac-version=["'](\d+(?:\.\d+)+)["']/i)
  end

  app "BitComet.app"
end
