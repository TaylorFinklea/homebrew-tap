cask "spotlight-caffeinate" do
  version "0.1.2"
  sha256 "347a1e6cc4edfb97f2aad40b0bd9bf247912f5a0bac46be9635116636ed557ba"

  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v#{version}/SpotlightCaffeinate.zip"
  name "Spotlight Caffeinate"
  desc "macOS menu bar app that runs caffeinate from Spotlight using App Intents"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"

  app "Spotlight Caffeinate.app"

  zap trash: [
    "~/Library/Application Support/SpotlightCaffeinate",
  ]
end
