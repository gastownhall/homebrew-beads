class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.47.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_arm64.tar.gz"
      sha256 "10af8795b49d6da4aa4fe6b2930dffc692ac716d59003e3c893129ee2398b639"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_amd64.tar.gz"
      sha256 "587cc9aee9a0bd7df5772040d3d6acf03971c939a3c4a94a3a0ddadd9924a7b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_arm64.tar.gz"
      sha256 "90bb6d50face32fb40b2d94fb6ba415afe6da6078c823eeb5956551b852caf07"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_amd64.tar.gz"
      sha256 "6003e3732fbdb35696acaa2cdb6883bb80429e31f8474aa1027cd8b75ee9af8b"
    end
  end

  def install
    bin.install "bd"

    # Install shell completions
    generate_completions_from_executable(bin/"bd", "completion")
  end

  test do
    system "#{bin}/bd", "version"
  end
end
