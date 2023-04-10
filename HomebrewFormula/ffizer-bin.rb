# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.9.0"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.9.0/ffizer_2.9.0-x86_64-apple-darwin.tgz"
    sha256 "1e88c4832501f351f153f8aff3d178fb4788fb6a070fe0037bfd2674843d708d"
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.9.0/ffizer_2.9.0-aarch64-apple-darwin.tgz"
    sha256 "31036539b2943efcb4055d28d33680846d9470bfd9458aa4a3459e5ebda172d9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.9.0/ffizer_2.9.0-x86_64-unknown-linux-musl.tgz"
    sha256 ""
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.9.0/ffizer_2.9.0-aarch64-unknown-linux-musl.tgz"
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
