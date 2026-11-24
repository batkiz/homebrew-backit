class KafCli < Formula
  desc "Convert text files into ebooks"
  homepage "https://github.com/ystyle/kaf-cli"
  version "1.3.16"
  license "MulanPSL-1.0"

  on_arm do
    url "https://github.com/ystyle/kaf-cli/releases/download/v#{version}/kaf-cli_v#{version}_darwin_arm64.zip"
    sha256 "4d007e71401a84a7c84f8b1bc9ae5213a1a0532a6a25b3c64492db64e9ebcbab"
  end

  on_intel do
    url "https://github.com/ystyle/kaf-cli/releases/download/v#{version}/kaf-cli_v#{version}_darwin_amd64.zip"
    sha256 "3328a44e372120b1150ab9fb8ff4c1a866398b225c4c8d09812b99b815dc6305"
  end

  livecheck do
    url "https://github.com/ystyle/kaf-cli/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "kaf-cli"
    bin.install "kindlegen"
  end
end
