cask "tty7" do
  arch arm: "arm64", intel: "x86_64"

  version "26.10.0"
  sha256 arm:   "afb33139b6f72b8a127856162a05921cb6fdcbfbeac0afc76abc6d6bdae25c62",
         intel: "bd14d80f5bed5d5f42d96ed4fb0084536391e4c766effd7d714db5315e754fb2"

  url "https://github.com/l0ng-ai/tty7/releases/download/v#{version}/tty7-#{version}-macos-#{arch}.dmg"
  name "tty7"
  desc "Manage terminal sessions and SSH connections"
  homepage "https://github.com/l0ng-ai/tty7/"

  livecheck do
    url "https://github.com/l0ng-ai/tty7/releases/latest"
    strategy :github_latest
  end

  app "tty7.app"
end
