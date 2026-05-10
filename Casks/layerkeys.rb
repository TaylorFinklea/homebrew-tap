cask "layerkeys" do
  version "0.2.3"
  sha256 "dad45515b14ac6844b6a2234b8b61e46f41a3987cc5e114ff802ae11639a7cda"

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
