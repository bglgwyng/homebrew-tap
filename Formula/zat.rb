class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.1/zat-aarch64-darwin.tar.gz"
      sha256 "a676592f1e5d7f428a760b4bb7000c42f4ff226f63d2f2a1d2af301cbefb174d"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.1/zat-x86_64-darwin.tar.gz"
      sha256 "e606a79743045492bada37f11d3173598f7de7e372775617c5e2dd343175a239"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.1/zat-x86_64-linux.tar.gz"
      sha256 "3646aed6c1b70656184b524eb5dedbb37372c553270e271fd897f4292c664cc8"
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
