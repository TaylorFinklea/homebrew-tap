class SpotlightCaffeinateCli < Formula
  desc "Terminal interface for Spotlight Caffeinate"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"
  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v0.4.0/spotlight-caffeinate-cli.tar.gz"
  sha256 "3bf8a55aaf0838e10aec1412435990ff0b5da3a8fe5b699748fedebb1668e7cc"
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
