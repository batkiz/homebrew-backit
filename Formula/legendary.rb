class Legendary < Formula
  desc "Manage and launch games from the Epic Games Store"
  homepage "https://github.com/legendary-gl/legendary"
  version "0.21.1"
  license "GPL-3.0-or-later"

  on_arm do
    url "https://github.com/legendary-gl/legendary/releases/download/#{version}/legendary_macOS_arm64", using: :nounzip
    sha256 "d87978321dba9cb731fab40c72f0a30bed55baca8b5341ab21024c5733cd837e"
  end

  on_intel do
    url "https://github.com/legendary-gl/legendary/releases/download/#{version}/legendary_macOS_x64", using: :nounzip
    sha256 "3dfab50277284b5bb0104f8710e4ff1d9ff00c992e44f5843fd0c977c5cc99c4"
  end

  livecheck do
    url "https://github.com/legendary-gl/legendary/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    executable = Hardware::CPU.arm? ? "legendary_macOS_arm64" : "legendary_macOS_x64"
    bin.install executable => "legendary"
    chmod 0755, bin/"legendary"
  end
end
