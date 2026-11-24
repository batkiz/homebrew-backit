cask "dino-rss" do
  arch arm: "arm64", intel: "x64"

  version "1.10.1"
  sha256 arm:   "8087c5032c6400a613c2e222ca141bf7a9d4d4edf1dd7df877a145a6b41d43aa",
         intel: "2ba8b037f0f4555f29424f4bc4902ccbd70c28d2357335a1fdfba6a2819e9f88"

  url "https://github.com/richshaw2015/dino-rss-electron/releases/download/v#{version}/Dinosaur.Rss.#{version}.#{arch}.dmg"
  name "Dinosaur Rss"
  desc "Desktop RSS reader"
  homepage "https://github.com/richshaw2015/dino-rss-electron/"

  livecheck do
    url "https://github.com/richshaw2015/dino-rss-electron/releases/latest"
    strategy :github_latest
  end

  app "Dinosaur Rss.app"
end
