cask "switchfin" do
  arch arm: "Silicon", intel: "Intel"

  version "0.9.6"
  sha256 arm:   "ff5100c51ad69db59e3832c5d34019b1de324e2bc59e23047b515224e952ac58",
         intel: "ec0c19d26e97923f8d8285e3be6e5c5aa82af768a821f29e1b4305d7208eb50b"

  url "https://github.com/dragonflylee/switchfin/releases/download/#{version}/Switchfin-macOS-#{arch}.dmg"
  name "Switchfin"
  desc "Native Jellyfin client"
  homepage "https://github.com/dragonflylee/switchfin/"

  livecheck do
    url "https://github.com/dragonflylee/switchfin/releases/latest"
    strategy :github_latest
  end

  app "Switchfin.app"
end
