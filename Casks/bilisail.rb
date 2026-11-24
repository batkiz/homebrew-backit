cask "bilisail" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0+6"
  sha256 arm:   "d4b3e40010c4b5e1ae238f58673c2409b22c8dcc40238ca23e0db2e40ef37026",
         intel: "0738947819daa9fc8a499ada9aade3e6ea6def59774933d95ccbbd527fad4506"

  url "https://github.com/CKopoer/BiliSail/releases/download/v#{version}/BiliSail-#{version}-macos-#{arch}.dmg"
  name "BiliSail"
  desc "Watch Bilibili videos and live streams"
  homepage "https://github.com/CKopoer/BiliSail/"

  livecheck do
    url "https://github.com/CKopoer/BiliSail/releases/latest"
    regex(/^v?(\d+(?:\.\d+)+(?:\+\d+)?)$/i)
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "BiliSail.app"
end
