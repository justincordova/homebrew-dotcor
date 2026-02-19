class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  version "1.0.0"
  license "MIT"

  depends_on "git"

  on_arm do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.0/dotcor_1.0.0_darwin_arm64.tar.gz"
    sha256 "4530ede43a8c4981070fd15e11d3a0d8bfc145efa706bc801a0029577e100648"
  end

  on_intel do
    url "https://github.com/justincordova/dotcor/releases/download/v1.0.0/dotcor_1.0.0_darwin_amd64.tar.gz"
    sha256 "6bc360c3068e6b31a510e0ceda42aba9d25768311719efe60c5f35088a976da3"
  end

  def install
    bin.install "dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
