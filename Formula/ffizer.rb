# Generated with JReleaser 1.9.0 at 2023-12-10T16:24:28.485555472Z
class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.12.0"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-unknown-linux-gnu.tgz"
    sha256 "df50848efba97ce8d3a21a8d40b2efb1c9e3e5057a2b461d60590387a19b74b4"

    def install
      bin.install "ffizer_2.12.0-aarch64-unknown-linux-gnu" => "ffizer"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-unknown-linux-gnu.tgz"
    sha256 "00716d6d1a1d82c5bed02c7fbe87e201aee6064b57edc8dbda9b52b8f9baa3bc"

    def install
      bin.install "ffizer_2.12.0-x86_64-unknown-linux-gnu" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-all-apple-darwin.tgz"
    sha256 "9f54d2fd508aa7fc9a9586cc26b437c42bc1310d2dc6b1e1f9a80ced4421eff6"

    def install
      bin.install "ffizer_2.12.0-all-apple-darwin" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-apple-darwin.tgz"
    sha256 "f673d111ef42f137f3a64de221e2f9161752a03e29a197dd5830782a1ba385d2"

    def install
      bin.install "ffizer_2.12.0-aarch64-apple-darwin" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-apple-darwin.tgz"
    sha256 "774684c6a0b16f9ef001a71e607b8bc83837817df5a9af8e96f077acd3379721"

    def install
      bin.install "ffizer_2.12.0-x86_64-apple-darwin" => "ffizer"
    end
  end


  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.12.0", output
  end
end
