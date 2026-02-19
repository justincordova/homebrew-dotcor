class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  url "https://github.com/justincordova/dotcor/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "36ed03406dd66bab774fb43859b83b2eb51e288a99fd0896fa998c8ec60e06eb"
  license "MIT"

  depends_on "git"

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
