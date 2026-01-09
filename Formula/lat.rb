class Lat < Formula
  desc "cat for LLMs - display file contents in an LLM-friendly way"
  homepage "https://github.com/bglgwyng/lat"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/lat/releases/download/v0.1.0/lat-aarch64-darwin.tar.gz"
      sha256 "ae1927180a0c06f4ae09debd9a13c0b8a0f214d8a3e68b687557754534e2907a"
    end
    on_intel do
      url "https://github.com/bglgwyng/lat/releases/download/v0.1.0/lat-x86_64-darwin.tar.gz"
      sha256 "bbcc17511424ab5d89edfe04b6ad2ca99ca005a54eca335cd259408d25558155"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/lat/releases/download/v0.1.0/lat-x86_64-linux.tar.gz"
      sha256 "fe28b158185e91bd60aba569be70d69dc4a13c4ebf1488150062f0dd48d1ff6f"
    end
  end

  def install
    bin.install "lat"
  end

  test do
    system "#{bin}/lat", "--help"
  end
end
