cask "scrypted" do
  version "0.143.0"
  sha256 "5d8f8fbcb39ba248ba61b6e3ec38d82382c621b85b700e6b1ed2f658f2bae114"

  url "https://github.com/koush/nvr.scrypted.app/releases/download/v#{version}/Scrypted-#{version}-arm64.dmg",
      verified: "github.com/koush/nvr.scrypted.app/"
  name "Scrypted"
  desc "Home video NVR and smart home hub with HomeKit Secure Video support"
  homepage "https://scrypted.app"

  # The Desktop App self-updates and manages its own Scrypted server version,
  # so brew is the installer, not the update channel. `brew upgrade` skips this
  # cask unless --greedy. The Desktop App (not the npx/launchd server) is the
  # only build the paid Scrypted NVR plugin supports on macOS.
  auto_updates true
  depends_on arch: :arm64

  app "Scrypted.app"

  # Deliberately no `zap` stanza. ~/.scrypted holds the NVR database, camera
  # credentials, and HomeKit pairings — a zap would force re-pairing every
  # camera in Home. Remove it by hand if that is genuinely what you want.
end
