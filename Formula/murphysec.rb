class Murphysec < Formula
  desc "Inspect project dependencies for known vulnerabilities"
  homepage "https://github.com/murphysecurity/murphysec"
  version "3.1.1"
  license "Apache-2.0"

  on_arm do
    url "https://github.com/murphysecurity/murphysec/releases/download/v#{version}/murphysec-darwin-arm64", using: :nounzip
    sha256 "1af7f02b141c2df21313a2622398623b2fc7759a5dbb6116887bc6fbaa4f2d6c"
  end

  on_intel do
    url "https://github.com/murphysecurity/murphysec/releases/download/v#{version}/murphysec-darwin-amd64", using: :nounzip
    sha256 "611ab7261770fb57cae5c14c1ac348eabd70bac894796c7060fd9ad85d885a65"
  end

  livecheck do
    url "https://github.com/murphysecurity/murphysec/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    executable = Hardware::CPU.arm? ? "murphysec-darwin-arm64" : "murphysec-darwin-amd64"
    bin.install executable => "murphysec"
    chmod 0755, bin/"murphysec"
  end
end
