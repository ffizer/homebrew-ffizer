# Generated with JReleaser 1.9.0 at 2023-12-10T19:50:02.228274445Z
class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.12.0"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-unknown-linux-gnu.tgz"
    sha256 "0a90ce200ddc223f28a0b51f00d4cc87af01662d730a044e0e37eca599fd9957"

    def install
      bin.install "ffizer_2.12.0-aarch64-unknown-linux-gnu/ffizer" => "ffizer"
    end
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-unknown-linux-gnu.tgz"
    sha256 "ee9b74bf94d7c248da73a35f6124d8ef4d0f7810c505534ad1fae5e921755e06"

    def install
      bin.install "ffizer_2.12.0-x86_64-unknown-linux-gnu/ffizer" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-all-apple-darwin.tgz"
    sha256 "e9e296ba8456548f36731f61c1d2ab3f01db85fb6bd8761a4067c39e7d97ccfe"

    def install
      bin.install "ffizer_2.12.0-all-apple-darwin/ffizer" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-apple-darwin.tgz"
    sha256 "6bfc7b7018ade778c4f2f996ab218920023aa04e10439b02bd2b0be96eacaa42"

    def install
      bin.install "ffizer_2.12.0-aarch64-apple-darwin/ffizer" => "ffizer"
    end
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-apple-darwin.tgz"
    sha256 "f592753e595ad2e2b14b50d904fb90a3e8f8af1077ea882f5e64d6f312df6fb1"

    def install
      bin.install "ffizer_2.12.0-x86_64-apple-darwin/ffizer" => "ffizer"
    end
  end


  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "ffizer 2.12.0", output
  end
end
