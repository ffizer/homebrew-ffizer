# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.10.2"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.10.2/ffizer_2.10.2-x86_64-apple-darwin.tgz"
    sha256 "16a776eb18b5c940185f0341066be604613640b5c543f54c7c8994b1441163f0"
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.10.2/ffizer_2.10.2-aarch64-apple-darwin.tgz"
    sha256 "7d6bc2b0263f9aea40ff5571ee9496648cc2f9c41fd7a290b963f248da5762c3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.10.2/ffizer_2.10.2-x86_64-unknown-linux-gnu.tgz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.10.2/ffizer_2.10.2-aarch64-unknown-linux-musl.tgz"
    sha256 "1d37f1e7b07f25f222e01d3068855cb5b0f1f124d2bbab76bd0599ddf1e80bb5"
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
