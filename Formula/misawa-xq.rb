class MisawaXq < Formula
  desc "Query JSON using jq syntax"
  homepage "https://github.com/MiSawa/xq"
  version "0.5.0"
  license "MIT"

  on_arm do
    url "https://github.com/MiSawa/xq/releases/download/v#{version}/xq-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "53ba95c725aaad3360f246121cd1d9c3ced8bac22214bdf652bd2253380ad29c"
  end

  on_intel do
    url "https://github.com/MiSawa/xq/releases/download/v#{version}/xq-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "e34e500708e5d5597fd95664b059899817fcc42285f890614a06d44b3632184e"
  end

  livecheck do
    url "https://github.com/MiSawa/xq/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "xq" => "misawa-xq"
  end
end
