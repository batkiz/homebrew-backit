cask "wake" do
  version "0.10.4"
  sha256 "66293153bb9ebe98bedf2757c353fcdcbc81a6ee04a02537279a37dd2a682da7"

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
