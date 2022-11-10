# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.6.1"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.6.1/ffizer_2.6.1-x86_64-apple-darwin.tar.gz"
    sha256 "ba48f4f54ed8071c505cb2ce8c212be94a0d5d0ac3d52e49ae25622172f237f5"
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.6.1/ffizer_2.6.1-aarch64-apple-darwin.tar.gz"
    sha256 "956d5fddb517c729b302d1ed28de6cab4da630ec276ef97d973463725f14e41c"
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.6.1/ffizer_2.6.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4c2938806873d5b26577db6055dc16b232c145a706315e2901837f2b27b81aa8"
  end

  # conflicts_with "ffizer"

  def install
    bin.install "ffizer"
    # man1.install "doc/ffizer.1"

    # bash_completion.install "complete/ffizer.bash"
    # fish_completion.install "complete/ffizer.fish"
    # zsh_completion.install "complete/_ffizer"
  end

  test do
    system "#{bin}/ffizer", "--help"
  end
end
