class Ran < Formula
  desc "Serve static files over HTTP"
  homepage "https://github.com/m3ng9i/ran"
  version "0.1.6"
  license "MIT"

  url "https://github.com/m3ng9i/ran/releases/download/v#{version}/ran_darwin_amd64.zip"
  sha256 "8ef11da419676003df2eda34adc2b9b635f4f20047f042b254d721e9e1e9d8b5"

  livecheck do
    url "https://github.com/m3ng9i/ran/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "ran_darwin_amd64" => "ran"
  end
end
