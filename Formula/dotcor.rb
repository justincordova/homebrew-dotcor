class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  url "https://github.com/justincordova/dotcor/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "auto-generated"
  license "MIT"

  depends_on "git"

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
