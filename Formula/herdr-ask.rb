class HerdrAsk < Formula
  desc "Lightweight command generation and terminal chat for Herdr and any terminal"
  homepage "https://github.com/TaylorFinklea/herdr-ask"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TaylorFinklea/herdr-ask/releases/download/v0.1.0/herdr-ask-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "31574b8b5e549380655ae3e581791054ced968bce231c55201d10450de225bf9"
    else
      url "https://github.com/TaylorFinklea/herdr-ask/releases/download/v0.1.0/herdr-ask-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "31de8f2f25a9e2e4062cd5ff3b49436bdd647d8782295ddbfb5c7026fcfc1a4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TaylorFinklea/herdr-ask/releases/download/v0.1.0/herdr-ask-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c437f1a838eaf11d8bfac8302be1fb37a305e777c8322f969693a91b046ec54d"
    else
      url "https://github.com/TaylorFinklea/herdr-ask/releases/download/v0.1.0/herdr-ask-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bab1e65f211ff9c24001aa274d91d26bd7e3bf5c46de5fafbb85ada34e38272a"
    end
  end

  def install
    bin.install "herdr-ask"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/herdr-ask --version")
    # Config resolution works without a config file present (built-in defaults).
    assert_match "config.toml", shell_output("#{bin}/herdr-ask config path")
  end
end
