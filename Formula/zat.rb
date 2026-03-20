class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.0/zat-aarch64-darwin.tar.gz"
      sha256 "993971feba1babd75743c5fc0e4d843460515a502e6df932057086adc2119316"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.0/zat-x86_64-darwin.tar.gz"
      sha256 "122a612d424a9a533cf0471b56e06075dc2c0470e377ce12d38b61c83e83bcb3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.0/zat-x86_64-linux.tar.gz"
      sha256 "5d0663a69f4d2d06b62bb9b930fbd28bb937ef77158271b3ba22bdc31c170e5d"
    end
  end

  def install
    bin.install "bin/zat"
  end

  test do
    (testpath/"test.ts").write("export function hello(): string { return 'hi'; }\n")
    assert_match "function hello", shell_output("#{bin}/zat #{testpath}/test.ts")
  end
end
