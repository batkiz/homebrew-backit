class RedisViewer < Formula
  desc "Browse Redis data in the terminal"
  homepage "https://github.com/saltfishpr/redis-viewer"
  version "0.1.5"
  license "MIT"

  on_arm do
    url "https://github.com/saltfishpr/redis-viewer/releases/download/v#{version}/redis-viewer_#{version}_darwin_arm64", using: :nounzip
    sha256 "092d636c488a1c059ee86f66d1085e395cb83d2ba753e3e7658183df1c4b605e"
  end

  on_intel do
    url "https://github.com/saltfishpr/redis-viewer/releases/download/v#{version}/redis-viewer_#{version}_darwin_amd64", using: :nounzip
    sha256 "c08f080a3fc296a47251d1167ea3db6d59f20553197c047e73328dcba956967c"
  end

  livecheck do
    url "https://github.com/saltfishpr/redis-viewer/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    executable = Hardware::CPU.arm? ? "redis-viewer_#{version}_darwin_arm64" : "redis-viewer_#{version}_darwin_amd64"
    bin.install executable => "redis-viewer"
    chmod 0755, bin/"redis-viewer"
  end
end
