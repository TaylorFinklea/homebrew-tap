class SpotlightCaffeinateCli < Formula
  desc "Terminal interface for Spotlight Caffeinate"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"
  url "https://github.com/TaylorFinklea/spotlight-caffeinate/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "b9cf8e4c2054806f0c3728aa9a0dcdeffd654fe9f4f7f2d806fdf121b5b6a4e8"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    derived_data = buildpath/"build/HomebrewDerivedData"

    system "xcodebuild",
           "-project", "SpotlightCaffeinate.xcodeproj",
           "-scheme", "SpotlightCaffeinateCLI",
           "-configuration", "Release",
           "-destination", "platform=macOS",
           "-derivedDataPath", derived_data,
           "CODE_SIGNING_ALLOWED=NO",
           "build"

    bin.install derived_data/"Build/Products/Release/spotlight-caffeinate-cli"
  end

  test do
    assert_match "not running", shell_output("#{bin}/spotlight-caffeinate-cli status")
  end
end
