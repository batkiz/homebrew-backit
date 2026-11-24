class Cowyo < Formula
  desc "Self-hosted wiki server"
  homepage "https://github.com/schollz/cowyo"
  version "2.12.0"
  license "MIT"

  url "https://github.com/schollz/cowyo/releases/download/v#{version}/cowyo_osx_amd64", using: :nounzip
  sha256 "2a8d300400d805631b6abce966cdf3b95392236459f98d22a0f52fe6d92b1e43"

  livecheck do
    url "https://github.com/schollz/cowyo/releases"
    strategy :github_releases do |releases|
      releases.filter_map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"].any? { |asset| asset["name"] == "cowyo_osx_amd64" }

        release["tag_name"].delete_prefix("v")
      end
    end
  end

  depends_on arch: :x86_64
  depends_on :macos

  def install
    bin.install "cowyo_osx_amd64" => "cowyo"
    chmod 0755, bin/"cowyo"
  end
end
