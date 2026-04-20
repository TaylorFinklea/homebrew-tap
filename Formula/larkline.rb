# Homebrew formula for larkline.
#
# Install: brew install TaylorFinklea/tap/larkline
# Binary name: lark
# After install: lark plugin sync
class Larkline < Formula
  desc "The line to all your tools — a keyboard-driven terminal command palette"
  homepage "https://github.com/TaylorFinklea/larkline"
  version "0.10.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d0c2c7d455120571718098ab6a2930ca515742462f3c720362eaad279818d78b"
    else
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "f2e4f19598f64e85c234a429432009ee98286a59dfb62a5b9d77c0a7aca2fd9b"
    end
  end

  on_linux do
    url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "43365bf469063c53f719c961ddc64262b48546a2ffa8f490fec9125ce75761e7"
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
