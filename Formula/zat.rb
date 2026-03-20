class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.3/zat-aarch64-darwin.tar.gz"
      sha256 "cf4c2c7e426b0d36d65440d8a5319160a98961aa7d1e4d338f91e027d1d82eb9"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.3/zat-x86_64-darwin.tar.gz"
      sha256 "a04750616f27881c78f32776c4c6e7afc953affd99ec7283d25acd505801a74f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.3/zat-x86_64-linux.tar.gz"
      sha256 "aca952574e16911038e36a0e2a19f7da5cb5331e018d8b5f1f87941f59f08850"
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
