# Homebrew formula for larkline.
#
# Install: brew install TaylorFinklea/tap/larkline
# Binary name: lark
# After install: lark plugin sync
class Larkline < Formula
  desc "The line to all your tools — a keyboard-driven terminal command palette"
  homepage "https://github.com/TaylorFinklea/larkline"
  version "0.15.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fb606cf5c6fd32f4e4605d204a12fb6881ab050e4e172800637de6c971f16ef9"
    else
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "e1e5cb65715e7e1476056e4a4c3b5d7cf46f0107651a29f650f7527d98f7797b"
    end
  end

  on_linux do
    url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "68bfb70bd314ceff4a948b297747d9a30a345db0a7452945ad975c6926af562b"
  end

  def install
    bin.install "lark"
  end

  def caveats
    <<~EOS
      Run `lark plugin sync` to install the standard plugin library.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lark --version")
  end
end
