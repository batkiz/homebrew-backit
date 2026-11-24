cask "icalingua-plus-plus" do
  version "2.26.10"
  sha256 "17d3118e92165b619e78a213fc968b9c671a37e8a957aaf24fba62a124b7a838"

  url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/download/v#{version}/Icalingua%2B%2B-#{version}-universal.dmg"
  name "Icalingua++"
  desc "Desktop chat client"
  homepage "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/"

  livecheck do
    url "https://github.com/Icalingua-plus-plus/Icalingua-plus-plus/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Icalingua++.app"
end
