class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "1.0.0"
  license "MIT"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.0/dotcor_1.0.0_darwin_arm64.tar.gz"
    sha256 "2ab4cb3a0733a319035afeaf7b12aadb82474f3267da67f8b0a47e23caf708ef"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.0/dotcor_1.0.0_darwin_amd64.tar.gz"
    sha256 "ebaba30de74f08a684944e37b7a3d13ae502955c915fc92b479b519952aa4b5d"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
