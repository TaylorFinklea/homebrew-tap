cask "spotlight-caffeinate" do
  version "0.1.0"
  sha256 "ec99717224928ed7db405946f4b30409e037f110302c297fb54bce56dbfced0c"

  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v#{version}/SpotlightCaffeinate.zip"
  name "Spotlight Caffeinate"
  desc "macOS menu bar app that runs caffeinate from Spotlight using App Intents"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"

  app "Spotlight Caffeinate.app"

  zap trash: [
    "~/Library/Application Support/SpotlightCaffeinate",
  ]
end
