cask "bilisail" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1+0"
  sha256 arm:   "8826b945345f607b295c430726422b54822ab5ea7b9c5e4d6504335d367d00dd",
         intel: "4ce317e9af0d51885a583506c53ada97d63d920f7832d19522eba16b0b8253fb"

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
