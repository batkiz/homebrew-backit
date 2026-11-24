cask "wake" do
  version "0.10.3"
  sha256 "7e9cf7480af06ff6028174c4616e75bd5800d41f3d56671690ae4e5f511a3611"

  url "https://github.com/iAmCorey/Wake/releases/download/v#{version}/Wake-#{version}-macos.zip"
  name "Wake"
  desc "Browse and resume coding agent sessions"
  homepage "https://github.com/iAmCorey/Wake/"

  livecheck do
    url "https://github.com/iAmCorey/Wake/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Wake.app"
end
