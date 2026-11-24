cask "pi-desktop" do
  version "1.9.1"
  sha256 "dabbb8199bcae8d510fcfc8feb51ed63fef6d49d0c22ab0132115e3817bd1905"

  url "https://github.com/LCorleone/pi-desktop/releases/download/v#{version}/Pi.Desktop_#{version}_x64.dmg"
  name "Pi Desktop"
  desc "Desktop client for the Pi coding agent"
  homepage "https://github.com/LCorleone/pi-desktop/"

  livecheck do
    url "https://github.com/LCorleone/pi-desktop.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  depends_on arch: :x86_64

  app "Pi Desktop.app"
end
