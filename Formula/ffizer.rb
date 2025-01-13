# Generated with JReleaser 1.16.0 at 2025-01-13T15:45:59.417574402Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.1"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.1/ffizer_2.13.1-aarch64-unknown-linux-gnu.zip"
    sha256 "f5041e503dfb7fe87b5f2b8f7261b3a1ce6b674434adc32362d65ee52d4de954"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.1/ffizer_2.13.1-x86_64-unknown-linux-gnu.zip"
    sha256 "23f9cc9ca5ee1e39a86cb19d485db6bbdc12009330eb7cc3f2c6d95d6e6b77c0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.1/ffizer_2.13.1-aarch64-apple-darwin.zip"
    sha256 "fbb50d29499fa845f165eaca14c4bdfb6a10373f371d0bd06029b68dfe137f5b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.1/ffizer_2.13.1-x86_64-apple-darwin.zip"
    sha256 "16e057a22c29f2affacd701c483f7f6c69e06aa3b183e57d6c0fe0de9093c116"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.13.1", output
  end
end
