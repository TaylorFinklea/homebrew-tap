# Homebrew formula for larkline.
#
# Install: brew install TaylorFinklea/tap/larkline
# Binary name: lark
# After install: lark plugin sync
class Larkline < Formula
  desc "The line to all your tools — a keyboard-driven terminal command palette"
  homepage "https://github.com/TaylorFinklea/larkline"
  version "0.14.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "966de9268daeb1844f756daaeb4d6048f0031815ad0643d3adbabf9bf55f8ef6"
    else
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a159aa2cce8a82ad1d0639dc8c9b15e148c3ca9ff0eabb7afe92d1b25177afef"
    end
  end

  on_linux do
    url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b034d3e2baf0473fae66c34e681faca963e1fecd0456dcab5e27b4ec60c2dac1"
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
