class G < Formula
  desc "Manage Go toolchain versions"
  homepage "https://github.com/voidint/g"
  version "1.8.0"
  license "MIT"

  on_arm do
    url "https://github.com/voidint/g/releases/download/v#{version}/g#{version}.darwin-arm64.tar.gz"
    sha256 "0788190fbd2240a649d8a1afe7da11460c649dd7031594f226cb2af1362c9a6d"
  end

  on_intel do
    url "https://github.com/voidint/g/releases/download/v#{version}/g#{version}.darwin-amd64.tar.gz"
    sha256 "cd5ef23d5cfeca9b4f1dc7cf428a1f3619dd42ced95b2c368c4aba74ab0aa2b2"
  end

  livecheck do
    url "https://github.com/voidint/g/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "g"
  end
end
