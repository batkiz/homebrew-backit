cask "kotatogram" do
  version "1.4.9"
  sha256 "9579a839eb57dd6768af6fa89066144695e5f88fe4de132a9530ebca2b442490"

  url "https://github.com/kotatogram/kotatogram-desktop/releases/download/k#{version}/#{version}-macos.dmg"
  name "Kotatogram"
  desc "Experimental Telegram Desktop client"
  homepage "https://github.com/kotatogram/kotatogram-desktop/"

  livecheck do
    url "https://github.com/kotatogram/kotatogram-desktop.git"
    regex(/^k(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on arch: :x86_64

  app "Kotatogram.app"
end
