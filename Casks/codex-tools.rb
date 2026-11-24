cask "codex-tools" do
  arch arm: "aarch64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "2a98991c9e28abf3ac962bd1031b80f6a0c1eb4ec4690b529c66f2877758c49b",
         intel: "edbd7be471606d9fc6397ded294f98599c9da0a9cf0009e89c0dc20f85bbaa95"

  url "https://github.com/170-carry/codex-tools/releases/download/v#{version}/Codex.Tools_#{version}_#{arch}.dmg"
  name "Codex Tools"
  desc "Manage Codex accounts and track usage"
  homepage "https://github.com/170-carry/codex-tools/"

  livecheck do
    url "https://github.com/170-carry/codex-tools/releases/latest"
    strategy :github_latest
  end

  app "Codex Tools.app"
end
