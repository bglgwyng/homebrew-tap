class Lat < Formula
  desc "cat for LLMs - display file contents in an LLM-friendly way"
  homepage "https://github.com/bglgwyng/lat"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/lat/releases/download/v0.1.0/lat-aarch64-darwin.tar.gz"
      sha256 "cc566468939094588cc4a8ee8ffda9227370b72f41c488c2fd24b2c5a902be92"
    end
    on_intel do
      url "https://github.com/bglgwyng/lat/releases/download/v0.1.0/lat-x86_64-darwin.tar.gz"
      sha256 "49d2e801211d93f923eeef79aa22f79462325ef0de7224950875c238893dd29d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/lat/releases/download/v0.1.0/lat-x86_64-linux.tar.gz"
      sha256 "1dea5b8c02aefcdc75a9f6cca91f98d070eaac390ca76251681571eca3b5a22f"
    end
  end

  def install
    bin.install "lat"
  end

  test do
    system "#{bin}/lat", "--help"
  end
end
