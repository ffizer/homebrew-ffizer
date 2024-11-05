# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.13.0"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-x86_64-apple-darwin.tgz"
    sha256 ""
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-aarch64-apple-darwin.tgz"
    sha256 ""
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-x86_64-unknown-linux-gnu.tgz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-aarch64-unknown-linux-musl.tgz"
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
