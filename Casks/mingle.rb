cask "mingle" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.15"
  sha256 arm:   "3f74ca7dc6097b69e7446c4520147590b27c2136ae6dcc1cb64323459fa1a03b",
         intel: "21f4cf4c413f54bb5ab16c364428deac75d3eaac0f4a474918d3b699f9efdd19"

  url "https://github.com/earayu/Mingle/releases/download/v#{version}/mingle-#{version}-#{arch}.dmg"
  name "Mingle"
  desc "Connect local coding agents to chat apps"
  homepage "https://mingle.build/"

  livecheck do
    url "https://github.com/earayu/Mingle/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Mingle.app"
end
