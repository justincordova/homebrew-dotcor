class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "1.0.3"
  license "MIT"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.3/dotcor_1.0.3_darwin_arm64.tar.gz"
    sha256 "680f3c2f8da2c28eff3f3482c0b3f3132bf9b41d57d2a9bae661685ead58a2bf"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.3/dotcor_1.0.3_darwin_amd64.tar.gz"
    sha256 "ffc276fcf61d14eb1145edd5adab4333199f4de81d88bc86f4a18c15e5779c60"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
