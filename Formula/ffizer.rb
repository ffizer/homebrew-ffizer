# Generated with JReleaser 1.15.0 at 2024-11-06T12:44:39.902332801Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.0"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-aarch64-unknown-linux-gnu.zip"
    sha256 "6dbe5baafb35267af043090bedb3cb534ce370c65a4a43e1b8652aa49b7a1a3e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-x86_64-unknown-linux-gnu.zip"
    sha256 "1749e8073097545fff0a8ab0de808bc349502a0a2c1f2ce52b6882a9d14f512a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-aarch64-apple-darwin.zip"
    sha256 "30d6cf3fd3faa24316dccbe62500ce92849ce948df9475268a780b441fc9febb"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.0/ffizer_2.13.0-x86_64-apple-darwin.zip"
    sha256 "c1f75f0275d73247512206281cee877f0b055790f19c6f19e1ad99c4f93d9df7"
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
