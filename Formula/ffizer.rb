# Generated with JReleaser 1.20.0 at 2025-09-17T14:37:26.838754096Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.4"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.4/ffizer_2.13.4-aarch64-unknown-linux-gnu.zip"
    sha256 "ec1ac87601d6efa75e48d68a7e77a93f6981e7d867d905ea0579d4eac8062f88"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.4/ffizer_2.13.4-x86_64-unknown-linux-gnu.zip"
    sha256 "cb107b598e076c79535e1a795939a28ca5a3c94eb22cd61c6879fe00fe6f8a51"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.4/ffizer_2.13.4-aarch64-apple-darwin.zip"
    sha256 "a81516397d1867a159a4daff29d0251eaf208bf57bbe23a363c2fb493d481d37"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.4/ffizer_2.13.4-x86_64-apple-darwin.zip"
    sha256 "7ab2ff7010c6b76293ee0cdca73edd3cda3c9a27ba286e4747f93c0d9fe5380a"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.13.4", output
  end
end
