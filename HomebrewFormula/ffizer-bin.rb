class FfizerBin < Formula
  version "2.4.3"
  desc "ffizer is a files and folders initializer / generator. Create any kind (or part) of project from template."
  homepage "https://github.com/ffizer/ffizer"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/ffizer/ffizer/releases/download/2.4.3/ffizer_2.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "268ea20e84fcd05e3279e3d95bd4522a8560ed03a62540366cdccf90b3f56d3a  /tmp/shasum_tmp"
  if OS.mac?
      url "https://github.com/ffizer/ffizer/releases/download/2.4.3/ffizer_2.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "25fc6a633db490de735b506199ba60d8808b337cb4d34bd413142d550660d811  /tmp/shasum_tmp"
  elsif OS.linux?
      url "https://github.com/ffizer/ffizer/releases/download/2.4.3/ffizer_2.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b7544b1e93ff9c44b92844180d17f15e0be31daff28126a15136ea77f7ea168  /tmp/shasum_tmp"
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
