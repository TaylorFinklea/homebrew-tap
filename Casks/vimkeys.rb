cask "vimkeys" do
  version "0.7.5"
  sha256 "19c58eb4dad9f33d67917ebc01d1b94fb4b630ff01c180508dc194d8ce96099b"

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
