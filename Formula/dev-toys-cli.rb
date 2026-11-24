class DevToysCli < Formula
  desc "Developer utilities for the command line"
  homepage "https://github.com/Jonnobrow/dev-toys-cli"
  version "0.5.0"
  license "GPL-3.0-or-later"

  on_arm do
    url "https://github.com/Jonnobrow/dev-toys-cli/releases/download/v#{version}/dev-toys-cli_#{version}_Darwin_arm64.tar.gz"
    sha256 "71ebe59cbd99fa4d3f1215d66ebf846b623267c7e567e98f086f6ec8ebf66b3f"
  end

  on_intel do
    url "https://github.com/Jonnobrow/dev-toys-cli/releases/download/v#{version}/dev-toys-cli_#{version}_Darwin_x86_64.tar.gz"
    sha256 "ef974419364bcb3c328c63726e32fc609fead6e9e78b4c7a2581e22321bcc843"
  end

  livecheck do
    url "https://github.com/Jonnobrow/dev-toys-cli/releases/latest"
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "dev-toys-cli"
  end
end
