cask "vimkeys" do
  version "0.7.11"
  sha256 "62e2aecd39c348a80207151a9cebc88cd666514f0962a1e7fcc4df5a9d9a78b9"

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
