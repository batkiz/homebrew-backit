cask "mingle" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.11"
  sha256 arm:   "b2414cedf72d70f7b6f4f9d3e200c926f1ec72bbf7e68285f1461eee7b2e704b",
         intel: "e946dcf6cc860db3910e4f41b76931cf1ccb50c36293474b3cbe21b7f4db3121"

  url "https://github.com/earayu/Mingle/releases/download/v#{version}/mingle-#{version}-#{arch}.dmg",
      verified: "github.com/earayu/Mingle/"
  name "Mingle"
  desc "Connect local coding agents to chat apps"
  homepage "https://mingle.build/"

  livecheck do
    url "https://github.com/earayu/Mingle/releases/latest"
    strategy :github_latest
  end

  auto_updates true

  app "Mingle.app"
end
