class SpotlightCaffeinateCli < Formula
  desc "Terminal interface for Spotlight Caffeinate"
  homepage "https://github.com/TaylorFinklea/spotlight-caffeinate"
  url "https://github.com/TaylorFinklea/spotlight-caffeinate/releases/download/v1.0.1/spotlight-caffeinate-cli.tar.gz"
  sha256 "685704390e10289d7946c4601f7204231e20e15bde79aa0a1d69058f0665171a"
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
