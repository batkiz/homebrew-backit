class Drep < Formula
  desc "Filter text with dynamic regular expressions"
  homepage "https://github.com/maxpert/drep"
  version "0.1.3"
  license "MIT"

  url "https://github.com/maxpert/drep/releases/download/v#{version}/drep-mac-x86_64.zip"
  sha256 "4c787092848e2138520b290b02d71e931bbebfb66a0a78a1104c4b7e44d933be"

  livecheck do
    url "https://github.com/maxpert/drep/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "drep"
  end
end
