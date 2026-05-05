cask "spotlight-caffeinate" do
  version "1.0.0"
  sha256 "bfc53f3f10e4032a0f1d7d5ee0ade76bc4609715675cadacac5523379e747937"

  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v#{version}/SpotlightCaffeinate.zip"
  name "Spotlight Caffeinate"
  desc "macOS menu bar app that runs caffeinate from Spotlight using App Intents"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"

  app "Spotlight Caffeinate.app"

  zap trash: [
    "~/Library/Application Support/SpotlightCaffeinate",
  ]
end
