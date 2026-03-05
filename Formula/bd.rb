# typed: false
# frozen_string_literal: true

# Pinned to v0.55.4 (stable) — v0.56.1-v0.58.0 pulled due to Dolt server
# data-loss bugs. See https://github.com/steveyegge/beads/issues/2372
class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.55.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/steveyegge/beads/releases/download/v0.55.4/beads_0.55.4_darwin_amd64.tar.gz"
      sha256 "39a371688b4e622e14eb5bc84f54f90ed7a9a2faac57861156811af4693f8284"

      define_method(:install) do
        bin.install "bd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/steveyegge/beads/releases/download/v0.55.4/beads_0.55.4_darwin_arm64.tar.gz"
      sha256 "18afdf4f562323a71687b2f7ed95c27750aee8d361b176a4a79caf176f00c0b9"

      define_method(:install) do
        bin.install "bd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveyegge/beads/releases/download/v0.55.4/beads_0.55.4_linux_amd64.tar.gz"
      sha256 "e0fa25456dd82890230eef17653448a0bf995104c78864be91c5ed84426a5f49"
      define_method(:install) do
        bin.install "bd"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveyegge/beads/releases/download/v0.55.4/beads_0.55.4_linux_arm64.tar.gz"
      sha256 "273c2a463e10778f3764e7119cf8d4ae014a208a9c1859e0e228633ce66cbeaf"
      define_method(:install) do
        bin.install "bd"
      end
    end
  end
end
