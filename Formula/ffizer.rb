# Generated with JReleaser 1.15.0 at 2024-11-06T12:37:26.522977477Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.0"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-aarch64-unknown-linux-gnu.zip"
    sha256 "c8be783dbc8b2176da982cb7eaef4531f179d4b58b6b5a6746babcbcc7128685"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-x86_64-unknown-linux-gnu.zip"
    sha256 "35b80a3fa2394f743a74fd1dc54914eebee0cf466e0c9e5538e34efdde1b966f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-aarch64-apple-darwin.zip"
    sha256 "3211616d5053a427033eb763f16d9fa367b10fd1e6ea15dc4b53d505670dc5d7"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-x86_64-apple-darwin.zip"
    sha256 "8cb4bf0f49990c262bf9bcf611506a142e6b0fb60c2c545099e97481d171a42f"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.13.0", output
  end
end
