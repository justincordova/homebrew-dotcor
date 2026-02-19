class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "1.0.2"
  license "MIT"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.2/dotcor_1.0.2_darwin_arm64.tar.gz"
    sha256 "7e627a2db6fcc5fcc82e787465400e89b8c3d816c5d3706dd77c6bcd648ce339"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.2/dotcor_1.0.2_darwin_amd64.tar.gz"
    sha256 "8aa54ac6a51cfb2403056464b919e5ccb69707f6e101bb25199c5b3368ea38b4"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
