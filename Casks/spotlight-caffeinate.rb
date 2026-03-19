cask "spotlight-caffeinate" do
  version "0.4.0"
  sha256 "635764bb5d720c4e3913c71ccd88ee34cf6a91f667749729db89f15efe0126fc"

  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v#{version}/SpotlightCaffeinate.zip"
  name "Spotlight Caffeinate"
  desc "macOS menu bar app that runs caffeinate from Spotlight using App Intents"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"

  app "Spotlight Caffeinate.app"

  zap trash: [
    "~/Library/Application Support/SpotlightCaffeinate",
  ]
end
