class Gitshorty < Formula
  desc "Shortcut command-line tool"
  homepage "https://github.com/carpeliam/gitshorty"
  url "https://github.com/carpeliam/gitshorty/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "799013a2416dc742b4b00fc0860a55d91be89c1f46ce0a11ad31e1d8ceb1ae63"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"sc")
  end

  test do
    system "which", "#{bin}/sc"
  end
end
