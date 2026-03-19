class SpotlightCaffeinateCli < Formula
  desc "Terminal interface for Spotlight Caffeinate"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"
  url "https://github.com/TaylorFinklea/spotlight-caffeinate/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "ef1dadc44c42df2eaad864ad9ea0f7e48941980ff5ab475244005e67bccc2e78"
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
