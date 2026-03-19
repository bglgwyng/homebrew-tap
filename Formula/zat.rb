class Zat < Formula
  desc "zatto files and directories"
  homepage "https://github.com/bglgwyng/zat"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.1/zat-aarch64-darwin.tar.gz"
      sha256 "260e3363aafc7fe9c80f7de92e51114de17ca692e283d16804dae1b5b8a61b6b"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.1/zat-x86_64-darwin.tar.gz"
      sha256 "3a6b2fff69948037c7a9e10ebc7efa3d64b42d7f1426ed67978ff69c8d18fc26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.1/zat-x86_64-linux.tar.gz"
      sha256 "bebec497dedff8f645a6500992e96dce9300d5e5a99212a4e8adb34c5fa65377"
    end
  end

  def install
    bin.install "zat"
  end

  test do
    system "#{bin}/zat", "--help"
  end
end
