cask "bloomrpc" do
  version "1.5.3"
  sha256 "9ddc4d9b85af745a5f5e49a55e9dd4d57e09855aee721f77e2a3151744cbc3ad"

  url "https://github.com/bloomrpc/bloomrpc/releases/download/#{version}/BloomRPC-#{version}.dmg"
  name "BloomRPC"
  desc "Graphical client for gRPC services"
  homepage "https://github.com/bloomrpc/bloomrpc/"

  livecheck do
    url "https://github.com/bloomrpc/bloomrpc/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :x86_64

  app "BloomRPC.app"
end
