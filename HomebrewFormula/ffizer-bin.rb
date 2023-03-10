# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.8.0"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.8.0/ffizer_2.8.0-x86_64-apple-darwin.tgz"
    sha256 "9697293226d571e961818e8fb0263e9d120e7409628734db71bf4e5d7693512e"
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.8.0/ffizer_2.8.0-aarch64-apple-darwin.tgz"
    sha256 "a22b24040b7647d2a04b128f3b84f822ec6165a867030db72287591705a3c0ce"
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.8.0/ffizer_2.8.0-x86_64-unknown-linux-gnu.tgz"
    sha256 "a2161a89b304fc44f4fb16d214117f04e7d888f6dce81b39ace05e4e3a5e846b"
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
