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
    sha256 "250cf118371f4b7d7559b40aa622d060c7e156ac59d89202790a1d52f31db7f0"
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.4.4/ffizer_2.4.4-aarch64-apple-darwin.tar.gz"
    sha256 "e079ed4a83f1e09b75a742b903f00b99a5b3989a1c6935b8b031ceb38f70c4be"
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.4.4/ffizer_2.4.4-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "96799ace73edb16a056503c1bcb056ba616477b809630e41af67107f798043e6"
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
