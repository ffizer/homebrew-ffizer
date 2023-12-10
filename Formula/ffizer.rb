# Generated with JReleaser 1.9.0 at 2023-12-10T16:34:31.499402264Z
class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.12.0"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-unknown-linux-gnu.tgz"
    sha256 "75d766367ad7cf8b9e8afcf7cc9bc0be6546c585b2e2cda419fee55aa722f7d5"

    def install
      bin.install "ffizer_2.12.0-aarch64-unknown-linux-gnu" => "ffizer"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-unknown-linux-gnu.tgz"
    sha256 "0af62bfd31cb45b146479e389966c38ea3fbd90d68515b9175618633377474e2"

    def install
      bin.install "ffizer_2.12.0-x86_64-unknown-linux-gnu" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-all-apple-darwin.tgz"
    sha256 "1c59afba6ef0bed3a491a3b67e9d610cf495e8a7c1a19116782e94ada22f77b0"

    def install
      bin.install "ffizer_2.12.0-all-apple-darwin" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-apple-darwin.tgz"
    sha256 "2b77a57bc81b03f1ec2fbf18ca90e80cb8ffd3d2aad943331462ed3a898afa42"

    def install
      bin.install "ffizer_2.12.0-aarch64-apple-darwin" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-apple-darwin.tgz"
    sha256 "2c446b95e2cc1e4528d8e5e1ca2ca8563364bf6d06c1e10855c6c7e0b7e8587d"

    def install
      bin.install "ffizer_2.12.0-x86_64-apple-darwin" => "ffizer"
    end
  end


  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.12.0", output
  end
end
