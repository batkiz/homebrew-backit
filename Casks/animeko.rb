cask "animeko" do
  arch arm: "aarch64", intel: "x86_64"

  version "6.4.1"
  sha256 arm:   "6120e1adcdb4175eb4f3f0d3385ffaaf28c2bb775dd1ed3a427a114bec36100c",
         intel: "67f56ab442aec2a71bad5dfa0f9a8616caeafceb2312ae439621e06abe32227d"

  url "https://github.com/open-ani/animeko/releases/download/v#{version}/ani-#{version}-macos-#{arch}.zip"
  name "Animeko"
  desc "Browse and watch anime"
  homepage "https://github.com/open-ani/animeko/"

  livecheck do
    url "https://github.com/open-ani/animeko/releases/latest"
    strategy :github_latest
  end

  app "Ani.app"
end
