class BilibiliToolkit < Formula
  desc "Command-line toolkit for Bilibili accounts"
  homepage "https://github.com/Hsury/Bilibili-Toolkit"
  url "https://github.com/Hsury/Bilibili-Toolkit/releases/download/v2.4/bilibili-toolkit-v2.4-macos-amd64.zip"
  sha256 "88088b8c17b058f2adabfdb313a5e53efedd61f742217e8afcdbcc5b7f5d5fb3"

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "bilibili"
    pkgshare.install "config.toml", "proxy.txt"
  end

  def caveats
    <<~EOS
      Copy #{pkgshare}/config.toml to your working directory and edit it before running bilibili.
      An example proxy.txt is also available in #{pkgshare}.
    EOS
  end
end
