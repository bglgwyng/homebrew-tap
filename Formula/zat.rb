class Zat < Formula
  desc "zatto files and directories"
  homepage "https://github.com/bglgwyng/zat"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.0/zat-aarch64-darwin.tar.gz"
      sha256 "15b57fce6a39b209ae06ce39ca97ab01b764a125abdf121c3c3a07cbcd04e6cb"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.0/zat-x86_64-darwin.tar.gz"
      sha256 "b15a7bda1a5d1dfc61a32baec8dbca0538694155db15961287176b48421ea613"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.0/zat-x86_64-linux.tar.gz"
      sha256 "2afb451dc07a0bc395634685bfae9eccd969620566135243044e3a6211d872b3"
    end
  end

  def install
    bin.install "zat"
  end

  test do
    system "#{bin}/zat", "--help"
  end
end
