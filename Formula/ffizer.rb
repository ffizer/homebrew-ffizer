# Generated with JReleaser 1.20.0 at 2025-09-17T15:11:48.266913093Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.5"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.5/ffizer_2.13.5-aarch64-unknown-linux-gnu.zip"
    sha256 "f6659c4651d94208f17f6f863eb068846ee82a0b850eca762855980082221039"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.5/ffizer_2.13.5-x86_64-unknown-linux-gnu.zip"
    sha256 "7cdea9f5b8b45c2a3cafcdf3430bf500ef120769bfe662cecaa062865127448f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.5/ffizer_2.13.5-aarch64-apple-darwin.zip"
    sha256 "b1cc057faeef3e7553d507406c3b9ac251a65c92ed11cb88f7a049885782b757"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.5/ffizer_2.13.5-x86_64-apple-darwin.zip"
    sha256 "ebb6a6e713a578f10c00a0a8467970a1fd84be021b7bd0e3d52e5f8131f01332"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.13.5", output
  end
end
