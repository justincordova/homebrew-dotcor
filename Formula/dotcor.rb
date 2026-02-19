class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "1.0.3"
  license "MIT"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.3/dotcor_1.0.3_darwin_arm64.tar.gz"
    sha256 "d761bd735237232252b27e0e3105c11b8ddc57e9840cb01d933f268d97b9c930"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.3/dotcor_1.0.3_darwin_amd64.tar.gz"
    sha256 "b1a8bcf0c6959c7b651186a2d7592326f804f0509dbd0f58dcc161608325c982"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
