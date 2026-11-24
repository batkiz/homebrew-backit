cask "lddc" do
  arch arm: "arm64", intel: "amd64"

  version "0.9.2"
  sha256 arm:   "771b965800523adb9605013bdbfe439398cba04834dd355c1493918a14e762f6",
         intel: "820d5dbdca629de71c9ed8fc23beb0bfe04e96e6718117017c82cfe74ea548e6"

  url "https://github.com/chenmozhijin/LDDC/releases/download/v#{version}/LDDC-#{version}-#{arch}.dmg"
  name "LDDC"
  desc "Find and synchronize song lyrics"
  homepage "https://github.com/chenmozhijin/LDDC/"

  livecheck do
    url "https://github.com/chenmozhijin/LDDC/releases/latest"
    strategy :github_latest
  end

  app "LDDC.app"
end
