cask "folia-major" do
  arch arm: "arm64", intel: "x64"

  version "0.7.29"
  sha256 arm:   "b831e25c57bfe4ae614d551a827b8de75839f2af96fc82917e184e1f6a9f96f3",
         intel: "f76fe76aa842acc92be6ec9707842ac0f7addb6e2fa7466756e9fcb2d2b41a3a"

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
