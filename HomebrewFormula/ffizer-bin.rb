class FfizerBin < Formula
  version "2.4.1"
  desc "ffizer is a files and folders initializer / generator. Create any kind (or part) of project from template."
  homepage "https://github.com/ffizer/ffizer"
  bottle :unneeded

  if OS.mac?
      url "https://github.com/ffizer/ffizer/releases/download/2.4.1/ffizer_2.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "82702d699a31ee468507e27b0bd8b4aee27e53bd28b19a6713d8ac400eb2e894"
  elsif OS.linux?
      url "https://github.com/ffizer/ffizer/releases/download/2.4.1/ffizer_2.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "589370d0bcce98dcb1164094cf22ef723842f8dc14447fc336f0b89ee029c0a8"
  end

  #conflicts_with "ffizer"

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
