class Irust < Formula
  desc "Interactive Rust REPL"
  homepage "https://github.com/sigmaSd/IRust"
  version "1.77.1"
  license "MIT"

  on_arm do
    url "https://github.com/sigmaSd/IRust/releases/download/irust%40#{version}/irust-aarch64-apple-darwin", using: :nounzip
    sha256 "3dbbae83fec3ad681bcff64182bd50c6bad25bf02d33cbd840c9420836dd6dd5"
  end

  on_intel do
    url "https://github.com/sigmaSd/IRust/releases/download/irust%40#{version}/irust-x86_64-apple-darwin", using: :nounzip
    sha256 "090df094022fa7d1d938ca82e72c22154ba8428a28cabe6c88c2ffcfe1bf6d84"
  end

  livecheck do
    url "https://github.com/sigmaSd/IRust/releases/latest"
    strategy :github_latest
  end

  depends_on :macos
  depends_on "rust"

  def install
    executable = Hardware::CPU.arm? ? "irust-aarch64-apple-darwin" : "irust-x86_64-apple-darwin"
    bin.install executable => "irust"
    chmod 0755, bin/"irust"
  end
end
