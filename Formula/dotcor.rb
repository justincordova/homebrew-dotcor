class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "1.0.1"
  license "MIT"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.1/dotcor_1.0.1_darwin_arm64.tar.gz"
    sha256 "8471ba1403e4afe6a449e4f8fc4f1a8684c4d3434425c445b3e6b571a4972a70"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.1/dotcor_1.0.1_darwin_amd64.tar.gz"
    sha256 "ff4e8354a22049b2f4a3e719c052b91b7bacd9b12d2daad5f3644f234476ca01"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
