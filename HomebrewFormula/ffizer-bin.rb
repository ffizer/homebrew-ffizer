# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.5.1"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.5.1/ffizer_2.5.1-x86_64-apple-darwin.tar.gz"
    sha256 "e571fc07e4c22bd15b7c95504d5a5f50f4541b42cfa9a33c0b5ad2a422b0861b"
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.5.1/ffizer_2.5.1-aarch64-apple-darwin.tar.gz"
    sha256 "bba7d3695f494934e8030623bec6de6568dd3a567c8bd037561b660a770a5f2f"
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.5.1/ffizer_2.5.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "066075368233c0c004ac48c57df807cbe7b98471babbd4d62f49d4195e090c05"
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
