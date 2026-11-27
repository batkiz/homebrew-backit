cask "bilisail" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0+8"
  sha256 arm:   "ea528ac03d920984ca088fa0dc5e370c4699a88bd6e8124e3278bffb7abff52c",
         intel: "d7b2588a3f9269f57e569bc37e7a412883d1c4fec0e781fcc075200fd2a7998f"

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
