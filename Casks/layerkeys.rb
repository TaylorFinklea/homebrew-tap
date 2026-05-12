cask "layerkeys" do
  version "0.2.6"
  sha256 "6cf58b8cb281d91aff8f4ef55e941b620acd7c2a57e3003238b1c5fbbd85e4be"

  url "https://github.com/TaylorFinklea/layerkeys/releases/download/v#{version}/LayerKeys.zip"
  name "LayerKeys"
  desc "macOS menu bar app for navigation and numpad layers"
  homepage "https://github.com/TaylorFinklea/layerkeys"

  depends_on macos: ">= :sonoma"

  app "LayerKeys.app"

  zap trash: [
    "~/Library/Preferences/io.taylorfinklea.layerkeys.plist",
  ]
end
