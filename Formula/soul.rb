class Soul < Formula
  desc "Compile and run SOUL audio programs"
  homepage "https://github.com/soul-lang/SOUL"
  version "1.0.82"

  on_arm do
    url "https://github.com/soul-lang/SOUL/releases/download/#{version}/binaries-osx-arm64.zip"
    sha256 "7757b68ccacd58ab0664c8d1a07247fb8ea8a320fa8564b87d14aacec209d8fc"
  end

  on_intel do
    url "https://github.com/soul-lang/SOUL/releases/download/#{version}/binaries-osx-x64.zip"
    sha256 "25e28a6426c16b143f291773e0fb756ecc43cb671cceb5cd626f3bd61a336530"
  end

  livecheck do
    url "https://github.com/soul-lang/SOUL/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    executable = Dir.glob("**/soul").fetch(0)
    bin.install executable
    bin.install Pathname(executable).dirname/"SOUL_PatchLoader.dylib"
  end
end
