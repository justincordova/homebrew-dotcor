class Dotcor < Formula
  desc "Symlink-based dotfile manager with Git integration"
  homepage "https://github.com/justincordova/dotcor"
  url "https://github.com/justincordova/dotcor/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "943890a1abd62411d7b1ad3baa4b5b6011b6ebf1c2c36c137d3496d1af95c0b3"
  license "MIT"
  head "https://github.com/justincordova/dotcor.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/dotcor"
  end

  test do
    assert_match "dotcor version #{version}", shell_output("#{bin}/dotcor --version")
  end
end
