# typed: false
# frozen_string_literal: true

class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/gastownhall/beads"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gastownhall/beads/releases/download/v1.0.3/beads_1.0.3_darwin_arm64.tar.gz"
      sha256 "fe6e4465751f46d9f3a670c3cf656714a171e44c8bc318fe19054f513b8306ed"
    else
      url "https://github.com/gastownhall/beads/releases/download/v1.0.3/beads_1.0.3_darwin_amd64.tar.gz"
      sha256 "6bd75ac056288a5e8bbb203750e95af5a441d5ad1d20ca5511e60cd6c813e54b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gastownhall/beads/releases/download/v1.0.3/beads_1.0.3_linux_arm64.tar.gz"
      sha256 "243a9c75012e794888fcafb957e7624b8fefdfef033d14cd03ebc9831c3bc12f"
    else
      url "https://github.com/gastownhall/beads/releases/download/v1.0.3/beads_1.0.3_linux_amd64.tar.gz"
      sha256 "1ef5dca818d7e81574df9e9f9fc2a16ab711da09b0fa7b822ae162d9a81c8912"
    end
  end

  def install
    bin.install "bd"
  end
end
