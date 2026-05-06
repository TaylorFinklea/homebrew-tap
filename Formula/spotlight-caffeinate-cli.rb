class SpotlightCaffeinateCli < Formula
  desc "Terminal interface for Spotlight Caffeinate"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"
  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v1.0.0/spotlight-caffeinate-cli.tar.gz"
  sha256 "607862a85557edbdba42ff589d205b95337fcbf0df66436c4889b7452fe1e166"
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
