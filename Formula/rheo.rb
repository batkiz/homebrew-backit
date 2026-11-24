class Rheo < Formula
  desc "Typeset documents and generate static sites with Typst"
  homepage "https://github.com/freecomputinglab/rheo"
  version "0.6.4"
  license any_of: ["Apache-2.0", "MIT"]

  on_arm do
    url "https://github.com/freecomputinglab/rheo/releases/download/v#{version}/rheo-aarch64-apple-darwin.zip"
    sha256 "e13eb4fb33cd88376d071e3a288da1caa4e9e659d9328a69a845d5beab94f995"
  end

  on_intel do
    url "https://github.com/freecomputinglab/rheo/releases/download/v#{version}/rheo-x86_64-apple-darwin.zip"
    sha256 "d4590777fff77aa0bee538bbaa04a8194edf05bc1218daa028acd2b87371646c"
  end

  livecheck do
    url "https://github.com/freecomputinglab/rheo/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "rheo"
  end
end
