class Arnis < Formula
  desc "Generate Minecraft worlds from real-world geography"
  homepage "https://github.com/louis-e/arnis"
  url "https://github.com/louis-e/arnis/releases/download/v3.5.0/arnis-mac-universal.tar.gz"
  sha256 "4314ad07188909241ae0622d11fb222c3cc83c3bbcb8b2dd970c7659d9eb664a"
  license "Apache-2.0"

  livecheck do
    url "https://github.com/louis-e/arnis/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "arnis-mac-universal" => "arnis"
  end
end
