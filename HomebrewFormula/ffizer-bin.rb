# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.4.4"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.4.4/ffizer_2.4.4-x86_64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.4.4/ffizer_2.4.4-aarch64-apple-darwin.tar.gz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.4.4/ffizer_2.4.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 ""
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
