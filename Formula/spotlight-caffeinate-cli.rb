class SpotlightCaffeinateCli < Formula
  desc "Terminal interface for Spotlight Caffeinate"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"
  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v1.0.2/spotlight-caffeinate-cli.tar.gz"
  sha256 "630de08a542f1158e9222e0834647e80f9c6dd51f8fa59f87b79e5371f1f9f5d"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "spotlight-caffeinate-cli"
    bin.install_symlink "spotlight-caffeinate-cli" => "caf"
  end

  test do
    assert_match "not running", shell_output("#{bin}/spotlight-caffeinate-cli status")
  end
end
