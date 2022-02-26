class FfizerBin < Formula
  version "2.4.3"
  desc "ffizer is a files and folders initializer / generator. Create any kind (or part) of project from template."
  homepage "https://github.com/ffizer/ffizer"
  #bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/ffizer/ffizer/releases/download/2.4.3/ffizer_2.4.3-x86_64-apple-darwin.tar.gz"
      sha256 "9e586cac24d63e32a80b3f56d38602ddd7f210fd3a5a81b20e1948f5b8c3cd05"
  elsif OS.mac?
      url "https://github.com/ffizer/ffizer/releases/download/2.4.3/ffizer_2.4.3-aarch64-apple-darwin.tar.gz"
      sha256 "32a4fa453887685a9ad3fca382609937003106428c46304c69794f54afd74ad9"
  elsif OS.linux?
      url "https://github.com/ffizer/ffizer/releases/download/2.4.3/ffizer_2.4.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1baadf1bedd2f9883ea1fa23866364231dd8cc57ea60ecd51a1040a6f4a6915"
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
