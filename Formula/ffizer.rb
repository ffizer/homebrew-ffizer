# Generated with JReleaser 1.9.0 at 2023-12-10T19:40:02.825761564Z
class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.12.0"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-unknown-linux-gnu.tgz"
    sha256 "d0472d3ef1365314156361f6445b8216c80831ad1261d468908dfc4b417c4d21"

    def install
      bin.install "ffizer_2.12.0-aarch64-unknown-linux-gnu" => "ffizer"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-unknown-linux-gnu.tgz"
    sha256 "cc0ca5808250ef96919cc038fee78cdffe70d10b02c05c55e43d00a2be370a8a"

    def install
      bin.install "ffizer_2.12.0-x86_64-unknown-linux-gnu" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-all-apple-darwin.tgz"
    sha256 "7f5967998df5db75c1229e0d6133b1887b2a5d6e826e6990f2f430041f4665c0"

    def install
      bin.install "ffizer_2.12.0-all-apple-darwin" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-apple-darwin.tgz"
    sha256 "65d0a80b7e699d8bceccc8ac8a24886c15b1992664a41f2c07b341cda90e9c69"

    def install
      bin.install "ffizer_2.12.0-aarch64-apple-darwin" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-apple-darwin.tgz"
    sha256 "9befac1340638bcf18031571fe25e15acf061a388720d33af233d2542aca5fb7"

    def install
      bin.install "ffizer_2.12.0-x86_64-apple-darwin" => "ffizer"
    end
  end


  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.12.0", output
  end
end
