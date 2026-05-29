cask "vimkeys" do
  version "0.7.13"
  sha256 "f9deb228acf652c8eaf8de6472964c46c863d71684fbae3d675ab15a34dce61c"

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
