cask "spotlight-caffeinate" do
  version "0.2.0"
  sha256 "77776b5db03ee4b9e9c59d5d77f5eb5a4cef166a9dad30a689165da9ded2ebef"

  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v#{version}/SpotlightCaffeinate.zip"
  name "Spotlight Caffeinate"
  desc "macOS menu bar app that runs caffeinate from Spotlight using App Intents"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"

  app "Spotlight Caffeinate.app"

  zap trash: [
    "~/Library/Application Support/SpotlightCaffeinate",
  ]
end
