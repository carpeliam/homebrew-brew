class Gitshorty < Formula
  desc "Shortcut command-line tool"
  homepage "https://github.com/carpeliam/gitshorty"
  url "https://github.com/carpeliam/gitshorty/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "3f1012d231789cf5519867b8c735930c7c3547c2bbcdc4bca4006d14742ee732"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"sc")
  end

  test do
    system "which", "#{bin}/sc"
  end
end
