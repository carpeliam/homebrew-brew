class Gitshorty < Formula
  desc "Shortcut command-line tool"
  homepage "https://github.com/carpeliam/gitshorty"
  url "https://github.com/carpeliam/gitshorty/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "09e838d2deeb4ae195abd821035d9b78340e90012fa8f160bbc65bd64fb250ff"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"sc")
  end

  test do
    system "which", "#{bin}/sc"
  end
end
