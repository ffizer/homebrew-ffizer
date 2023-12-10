# Generated with JReleaser 1.9.0 at 2023-12-10T21:31:03.723285401Z
class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.12.0"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-unknown-linux-gnu.zip"
    sha256 "5112184b91cc359149e50810a4b56b5b51b06364ca08af4063acca3c43642fb4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-unknown-linux-gnu.zip"
    sha256 "623fd2ea0a85542bc80e2e2d12193b8c444b1648267dde256f9552f1740e6e50"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-aarch64-apple-darwin.zip"
    sha256 "89042d0531fe95f5a168d3a5ef7bd98e7c66b6714e326a81504d0623d23cda6f"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.12.0/ffizer_2.12.0-x86_64-apple-darwin.zip"
    sha256 "1ab2a4e90179e777f96a9b6f16db10416851b1615290c2cfcde19d1b873d0021"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.12.0", output
  end
end
