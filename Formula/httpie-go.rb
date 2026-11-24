class HttpieGo < Formula
  desc "HTTP client with an HTTPie-style interface"
  homepage "https://github.com/nojima/httpie-go"
  version "0.7.0"
  license "MIT"

  url "https://github.com/nojima/httpie-go/releases/download/v#{version}/httpie-go_darwin_amd64", using: :nounzip
  sha256 "640456a6fcba1603baa55812abbf6a7ed5a2d207034c6485f76412857231a8a6"

  livecheck do
    url "https://github.com/nojima/httpie-go/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "httpie-go_darwin_amd64" => "ht"
    chmod 0755, bin/"ht"
  end
end
