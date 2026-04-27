# Generated with JReleaser 1.23.0 at 2026-04-27T11:35:17.244966614Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.10"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.10/ffizer_2.13.10-aarch64-unknown-linux-gnu.zip"
    sha256 "4d0e50ad7c86861fbab37733d6d526640c5a816a7272fd4c66ee57a71881741d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.10/ffizer_2.13.10-x86_64-unknown-linux-gnu.zip"
    sha256 "9ed3d05548b0ab752cc6e9dade4506e2c422ac59002367175ae0f18240ebdb39"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.10/ffizer_2.13.10-aarch64-apple-darwin.zip"
    sha256 "3baa13a4e7336505a8c0c4da76895aacbcf76b580f172cdeea4863f4fb2a5725"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.10/ffizer_2.13.10-x86_64-apple-darwin.zip"
    sha256 "46b73689eea0d8f9603507358768b88d64407627d73c0c50cab0d6971212d345"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.13.10", output
  end
end
