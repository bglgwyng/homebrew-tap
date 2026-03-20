class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.0/zat-aarch64-darwin.tar.gz"
      sha256 "f218e01f9962a60b4b2c9a135d2408019e0acd1f478a028f47564ca2c64a4c82"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.0/zat-x86_64-darwin.tar.gz"
      sha256 "9c2d9470e6deea8dc04ada8cf736a212871b4e0526c0cbd14354d6d1a0b92cf0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.0/zat-x86_64-linux.tar.gz"
      sha256 "38e567c1b3923e9118462d9818db0b08a1ed3c89164212a236f65790ed2d0696"
    end
  end

  def install
    bin.install "zat"
  end

  test do
    (testpath/"test.ts").write("export function hello(): string { return 'hi'; }\n")
    assert_match "function hello", shell_output("#{bin}/zat #{testpath}/test.ts")
  end
end
