cask "vimkeys" do
  version "0.7.7"
  sha256 "1d92c597aaf6fe0f4f3e5eb64f8bf845fb3384f4024f0f5aa1970cde958ee038"

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
