# typed: false
# frozen_string_literal: true

class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/gastownhall/beads"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/gastownhall/beads/releases/download/v1.0.2/beads_1.0.2_darwin_arm64.tar.gz"
      sha256 "f3b27edd4ed43ce8aa792837145f324e4b8a3cbf9dc0c81d144682da46189038"
    else
      url "https://github.com/gastownhall/beads/releases/download/v1.0.2/beads_1.0.2_darwin_amd64.tar.gz"
      sha256 "7d9de37b544ecc55ccc798da6778051344dba839834943957942f38412d7a13a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/gastownhall/beads/releases/download/v1.0.2/beads_1.0.2_linux_arm64.tar.gz"
      sha256 "f7b60c2398305bdb18d4ece1c84b87951e5bbcd6966fa0d607ac16f9d6e11a4d"
    else
      url "https://github.com/gastownhall/beads/releases/download/v1.0.2/beads_1.0.2_linux_amd64.tar.gz"
      sha256 "66280bca14581218684027fee000810c2e40a9c6fe00e876ff64bdcb01a036c0"
    end
  end

  def install
    bin.install "bd"
  end
end
