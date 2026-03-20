class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.3.0/zat-aarch64-darwin.tar.gz"
      sha256 "0f790b9e8551ba2ff1f024978e2a3c667a27e63d1f16c551765e52f44a38ace8"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.3.0/zat-x86_64-darwin.tar.gz"
      sha256 "64f87f30401e051123f96d5461f8393f469ce3466488484b05bd675d081ebbf7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.3.0/zat-x86_64-linux.tar.gz"
      sha256 "ff61a87619ffb8007614533d1b7838de06a6ef702e15887c55a2ca188e6fa91d"
    end
  end

  def install
    bin.install "bin/zat"
    libexec.install Dir["libexec/zat"]
  end

  test do
    (testpath/"test.ts").write("export function hello(): string { return 'hi'; }\n")
    assert_match "function hello", shell_output("#{bin}/zat #{testpath}/test.ts")
  end
end
