cask "tesela" do
  version "0.1.3"
  sha256 "165c10f18afefee1b80b5492ae52b0388ef8b1edc057871a8b358ed544fe1195"

  url "https://github.com/TaylorFinklea/tesela/releases/download/v#{version}/Tesela.app.zip"
  name "Tesela"
  desc "Local-first block-based notes app"
  homepage "https://github.com/TaylorFinklea/tesela"

  # The app updates itself via the Tauri updater (GitHub Releases latest.json);
  # brew is the installer, not the update channel. `brew upgrade` skips this
  # cask unless --greedy.
  auto_updates true
  depends_on macos: :monterey
  depends_on arch: :arm64

  app "Tesela.app"
end
