cask "vimkeys" do
  version "0.6.1"
  sha256 "4a1641ea1204c621b6d1101147283b53ed1b1cd19b3e46edb45b8cd1d9deb7da"

  url "https://github.com/TaylorFinklea/vimkeys/releases/download/v#{version}/VimKeys.zip"
  name "VimKeys"
  desc "Vim-style home-row navigation for Safari, scoped to a menu-bar app"
  homepage "https://github.com/TaylorFinklea/vimkeys"

  depends_on macos: ">= :sonoma"

  app "VimKeys.app"

  zap trash: [
    "~/Library/Preferences/io.taylorfinklea.vimkeys.plist",
  ]
end
