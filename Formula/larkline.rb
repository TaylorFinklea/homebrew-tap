# Homebrew formula for larkline.
#
# Install: brew install TaylorFinklea/tap/larkline
# Binary name: lark
# After install: lark plugin sync
class Larkline < Formula
  desc "The line to all your tools — a keyboard-driven terminal command palette"
  homepage "https://github.com/TaylorFinklea/larkline"
  version "0.12.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "67c2af0da23c030f61e0158a8ea0a4bc4d31517fa89342230715eb6fbe29dbe9"
    else
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "2d153c9bfef21b17e457019d7352a0b59d337f5c06beb350450349710ede8f8c"
    end
  end

  on_linux do
    url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "16082ccdcce80dc92b43c6b586ee3838d5f70004202b4c5155c5fbd8ef6aeb38"
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
