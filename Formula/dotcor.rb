class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "2.0.0"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v2.0.0/dotcor_2.0.0_darwin_arm64.tar.gz"
    sha256 "af249a5573b42de6a0d79e7c6e0b799bc74c687369d4c3898a6d029a384c0356"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v2.0.0/dotcor_2.0.0_darwin_amd64.tar.gz"
    sha256 "c864809745cc5da1c0b42f2042b47b74f6fc3f49354792ef82d44b791a29e8e0"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.3/dotcor_1.0.3_darwin_amd64.tar.gz"
    sha256 "b1a8bcf0c6959c7b651186a2d7592326f804f0509dbd0f58dcc161608325c982"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor #{version}", shell_output("#{bin}/dotcor --version")
  end
end
