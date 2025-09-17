# Generated with JReleaser 1.20.0 at 2025-09-17T14:29:48.753644362Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.4"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.4/ffizer_2.13.4-aarch64-unknown-linux-gnu.zip"
    sha256 "008d7cbfbad3442665527aec436accc7e899561d54e43f522002c63a3a64aecd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.4/ffizer_2.13.4-x86_64-unknown-linux-gnu.zip"
    sha256 "e1c0b2c11be3957d471f8d1228ade03e235098bee527c9aaf46f807bab0c7ef9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.4/ffizer_2.13.4-aarch64-apple-darwin.zip"
    sha256 "34c8148f4c1f8e3cccaf1613363aac37a2a976c1f2726fbe361002c3591a6f96"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.4/ffizer_2.13.4-x86_64-apple-darwin.zip"
    sha256 "c457d0034c3397b12c258f21f7f325689daf12efd988f130a911c9d0b8a71457"
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
