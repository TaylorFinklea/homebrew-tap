# Homebrew formula for larkline.
#
# Install: brew install TaylorFinklea/tap/larkline
# Binary name: lark
# After install: lark plugin sync
class Larkline < Formula
  desc "The line to all your tools — a keyboard-driven terminal command palette"
  homepage "https://github.com/TaylorFinklea/larkline"
  version "0.4.0"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "81b56394b5f85d6832ebcabe6816965d6735d9e853bf2a8522d47da16182be76"
    else
      url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "889feea27ea59040f8b62c59582ba9c00052fb8ea06e3ebf6b2a1c3030b3cb7d"
    end
  end

  on_linux do
    url "https://github.com/TaylorFinklea/larkline/releases/download/v#{version}/lark-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "83120e24d5080604aefecee283de4b1c0cdc89245baed84684039d49b4613d29"
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
