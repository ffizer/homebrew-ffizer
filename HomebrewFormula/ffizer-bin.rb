# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.5.0"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.5.0/ffizer_2.5.0-x86_64-apple-darwin.tar.gz"
    sha256 "71e423256b3af58bc8cc32d4bd1ed3186b1950f62e5c689a43c22263275d330a"
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.5.0/ffizer_2.5.0-aarch64-apple-darwin.tar.gz"
    sha256 "6eaf8529e493357f5de9c6176d4464d2653d20f3b98e62d473442658875f8b37"
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.5.0/ffizer_2.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "316e209c66ab1e16c4888f70b92aa0aceefccccd7b0260611497f3e7cd83c107"
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
