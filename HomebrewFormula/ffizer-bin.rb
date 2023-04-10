# frozen_string_literal: true

#
# Homebrew formula for ffizer-bin
#
# directly download the pre-built binary from ffizer github repository
class FfizerBin < Formula
  desc "Generate or update files, folders (and project) from templates with ffizer"
  homepage "https://github.com/ffizer/ffizer"
  version "2.10.3"
  license "CC0-1.0"
  # bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.10.3/ffizer_2.10.3-x86_64-apple-darwin.tgz"
    sha256 "b88f89053ab6954ca5b04a32df889871bf2ba3c6db8619ea9e9ccf8bde970de7"
  elsif OS.mac?
    url "https://github.com/ffizer/ffizer/releases/download/2.10.3/ffizer_2.10.3-aarch64-apple-darwin.tgz"
    sha256 "a04897869f1682b57d5c814d81e5d5be35e1f09c06c8ad55cd5084ad6da17c49"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.10.3/ffizer_2.10.3-x86_64-unknown-linux-gnu.tgz"
    sha256 "5b54f001b18eba8b7448b4e5b4a9c27fb0fca3e94617cae348cb11411949d9d6"
  elsif OS.linux?
    url "https://github.com/ffizer/ffizer/releases/download/2.10.3/ffizer_2.10.3-aarch64-unknown-linux-musl.tgz"
    sha256 "d72d00676fabc04b17e07d758181bad23e9d4b4621baa124a5717b9d6969d4d6"
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
