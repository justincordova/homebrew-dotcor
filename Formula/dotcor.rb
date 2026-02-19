class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "1.0.0"
  license "MIT"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.0/dotcor_1.0.0_darwin_arm64.tar.gz"
    sha256 "2c2bf462d3e029e1ef47c26b01700c11c55c5e168059c14327518a02af99a5f1"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.0/dotcor_1.0.0_darwin_amd64.tar.gz"
    sha256 "0d5791a4a3ab3cebb4ebd3d2af02b21b699ef316201c54ebbbc587564e971edb"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
