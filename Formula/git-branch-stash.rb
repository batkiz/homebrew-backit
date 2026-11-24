class GitBranchStash < Formula
  desc "Manage snapshots of a Git working directory"
  homepage "https://github.com/gitext-rs/git-branch-stash"
  version "0.12.0"
  license any_of: ["Apache-2.0", "MIT"]

  on_arm do
    url "https://github.com/gitext-rs/git-branch-stash/releases/download/v#{version}/git-branch-stash-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "13e7566eb897fa3919188a1ebe9512bb16425b90e6f785e34def3fbacc2ed760"
  end

  on_intel do
    url "https://github.com/gitext-rs/git-branch-stash/releases/download/v#{version}/git-branch-stash-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0843d6a36115683e2f5f030dc3902b8ab054008b76b674e67bd76acbdb1dc3af"
  end

  livecheck do
    url "https://github.com/gitext-rs/git-branch-stash/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "git-branch-stash"
  end
end
