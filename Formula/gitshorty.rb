class Gitshorty < Formula
  desc "Shortcut command-line tool"
  homepage "https://github.com/carpeliam/gitshorty"
  url "https://github.com/carpeliam/gitshorty/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "3a707834804bdae1ae657f94055f6f4a0dd86119b1bb8d94d9694fd417cd2039"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"sc")
  end

  test do
    system "which", "#{bin}/sc"
  end
end
