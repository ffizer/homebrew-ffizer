# Generated with JReleaser 1.9.0 at 2023-12-10T21:43:38.2583825Z
class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.12.0"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-unknown-linux-gnu.zip"
    sha256 "5f91fb0d243f186831daa2d057588404f9f08914a82b25991ea9477433dd0aa8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-unknown-linux-gnu.zip"
    sha256 "44fdefe5bafc209bcac0a5ac5fcaf21a76a83b35ddc5bf3b06deeb20a71bb89e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-apple-darwin.zip"
    sha256 "1080049c3649a425cdfa06457217e96a0e52d155769c35373412327d4151f311"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-apple-darwin.zip"
    sha256 "b9a40ea2a2cd3f75bd73a0a6c6f109bb115f70ff665c98986297c4bb0354ada6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.12.0", output
  end
end
