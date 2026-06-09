# Generated with JReleaser 1.24.0 at 2026-06-09T10:14:58.82039339Z

class Ffizer < Formula
  desc "ffizer is a files and folders initializer / generator."
  homepage "https://ffizer.github.io/ffizer/book/"
  version "2.13.11"
  license "CC0-1.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.11/ffizer_2.13.11-aarch64-unknown-linux-gnu.zip"
    sha256 "cf24464adc978c343e46b98381fd824f43893db0690c12f7093486441db19682"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.11/ffizer_2.13.11-x86_64-unknown-linux-gnu.zip"
    sha256 "4750bc265be9e3e687e4938bb9e7d4dae0d22d1a58258ed7c5719df3cb47bd49"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.11/ffizer_2.13.11-aarch64-apple-darwin.zip"
    sha256 "175c73f9f0ce9b7a6905a98634353da406b3196cadbb0adee3619a1c6ac7e104"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ffizer/ffizer/releases/download/2.13.11/ffizer_2.13.11-x86_64-apple-darwin.zip"
    sha256 "d354cd4bdbfc11c2b0840af370dcd23be7936cd6c4584bf525e5304b0ffde245"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/ffizer" => "ffizer"
  end

  test do
    output = shell_output("#{bin}/ffizer --version")
    assert_match "2.13.11", output
  end
end
