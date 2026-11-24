class BeetcbGhdl < Formula
  desc "Download release assets from GitHub"
  homepage "https://github.com/yaonyan/ghdl"
  version "0.1.1"
  license "MIT"

  on_arm do
    url "https://github.com/yaonyan/ghdl/releases/download/v#{version}/ghdl_#{version}_Darwin_arm64.tar.gz"
    sha256 "f2b4a68a03c3da70ad607239e43efc0d1d80cb6251f74f0c957fe74086ba705d"
  end

  on_intel do
    url "https://github.com/yaonyan/ghdl/releases/download/v#{version}/ghdl_#{version}_Darwin_x86_64.tar.gz"
    sha256 "22d0ba048c69ea23d893ab8a14593bed58f78e07149cc6fe526b284f1cfa6d35"
  end

  livecheck do
    url "https://github.com/yaonyan/ghdl/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "ghdl" => "beetcb-ghdl"
  end
end
