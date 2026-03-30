class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.2/zat-aarch64-darwin.tar.gz"
      sha256 "d0c9c7c397cde1e936f96acf8b1dcf03a9d2970b5460e41c501044072b565242"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.2/zat-x86_64-darwin.tar.gz"
      sha256 "66851a6fa9f96bf10f5baad1e4f41c1c9163796def1df8002da1f72517e390ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.2/zat-x86_64-linux.tar.gz"
      sha256 "5df4024d41190cdbc7c96809194bce9d5bfa0b785332e5014f31293a35d6c827"
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
