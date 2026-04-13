cask "layerkeys" do
  version "0.2.0"
  sha256 "8665e5595c2dde2a981adb7790346af96e2e12380db3f60a9e4c07046489d7cc"

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
