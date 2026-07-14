# Generated with JReleaser 1.25.0 at 2026-07-14T12:36:25.688207294Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.12"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.12/ffizer_2.13.12-aarch64-unknown-linux-gnu.zip"
    sha256 "89dc64568cf9b30fae0683409d55975505f4d6ab29298702d022b20685e33e03"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.12/ffizer_2.13.12-x86_64-unknown-linux-gnu.zip"
    sha256 "20044ccba9088c79046e89a3928eacfb9ccef5367538f6b6daa609b8a9761919"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.12/ffizer_2.13.12-aarch64-apple-darwin.zip"
    sha256 "335b53bef127c7d323ec74176f0bda31b0fd886db6f1022c616a99b3a1b72530"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.12/ffizer_2.13.12-x86_64-apple-darwin.zip"
    sha256 "d2ccd23c41cce7fb122e25a5783bd45d1cb73d9b1cd105c860566ca6a377555d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.13.12", output
  end
end
