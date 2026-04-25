class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "2.0.1"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v2.0.1/dotcor_2.0.1_darwin_arm64.tar.gz"
    sha256 "1e4cfb25d01e3d655b446e34662660c1f912de10376288910a7deefe3b6fe191"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v2.0.1/dotcor_2.0.1_darwin_amd64.tar.gz"
    sha256 "8520fcbf05f2f135efd990401ce94e6bcdba29d30bd2d74a395cef3f98f9b21a"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor #{version}", shell_output("#{bin}/dotcor --version")
  end
end
