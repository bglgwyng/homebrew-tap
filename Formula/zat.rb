class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.1/zat-aarch64-darwin.tar.gz"
      sha256 "78dc4208667aadc0669cd8706d4c31c4537f9e7cc2f8b457a82f00227e64443a"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.1/zat-x86_64-darwin.tar.gz"
      sha256 "e65f864e95ed37bb2bd51dfa97bd5b57ed265c275e43a411e46911e3bf409bfc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.1/zat-x86_64-linux.tar.gz"
      sha256 "9c0195ee5779ab95400823b68aa372d93315652c4e59b6af02e10f4238a8f898"
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
