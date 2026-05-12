cask "layerkeys" do
  version "0.2.5"
  sha256 "f885a8988e7b6448134d11c6267600c5b6e2b4d0d0f3f0eb7792debabe5c274b"

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
