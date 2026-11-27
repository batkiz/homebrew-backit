cask "folia-major" do
  arch arm: "arm64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "713fb5c1d5ee7980442f2d8e77e09661fa5be16632946d74d2ae3c2812dfd8a3",
         intel: "a0e4cc81e56fa5da4a526ba81fb3430f7281be7972256b72d25d83ebd49f930e"

  url "https://github.com/chthollyphile/folia-major/releases/download/v#{version}/Folia-#{version}-#{arch}.dmg"
  name "Folia"
  desc "Display synchronized lyrics"
  homepage "https://github.com/chthollyphile/folia-major/"

  livecheck do
    url "https://github.com/chthollyphile/folia-major/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Folia.app"
end
