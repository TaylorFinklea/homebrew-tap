cask "layerkeys" do
  version "0.2.4"
  sha256 "dd2a0e228a4c199b828ea4216cabb91693954915a651b6a6ad72d317ac61481b"

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
