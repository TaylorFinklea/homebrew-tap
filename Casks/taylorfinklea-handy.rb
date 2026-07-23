cask "taylorfinklea-handy" do
  version "0.9.3-fork.1"
  sha256 "18cd1efe5e54690faa94c7ebdfff2e1ed7c9638c6860f92c23a415bee73254f6"

  url "https://github.com/TaylorFinklea/Handy/releases/download/v#{version}/Handy.app.zip"
  name "Handy (TaylorFinklea fork)"
  desc "Speech-to-text app with custom sounds, themes, and waveform overlay"
  homepage "https://github.com/TaylorFinklea/Handy"

  conflicts_with cask: "handy"
  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Handy.app"
end
