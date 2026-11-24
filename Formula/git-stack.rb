class GitStack < Formula
  desc "Manage stacked Git branches"
  homepage "https://github.com/gitext-rs/git-stack"
  version "0.10.18"
  license any_of: ["Apache-2.0", "MIT"]

  url "https://github.com/gitext-rs/git-stack/releases/download/v#{version}/git-stack-v#{version}-x86_64-apple-darwin.tar.gz"
  sha256 "82e691017e7129f5a1e546e7c3f767febb09d0a4ae3cdb4b623491d2ac65c6cb"

  livecheck do
    url "https://github.com/gitext-rs/git-stack/releases/latest"
    strategy :github_latest
  end

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "git-stack"
  end
end
