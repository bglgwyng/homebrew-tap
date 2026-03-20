class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.2/zat-aarch64-darwin.tar.gz"
      sha256 "f348525d2a3da68f297f5a697e56def67491439098bafa6ade54dbcc26c60cfc"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.2/zat-x86_64-darwin.tar.gz"
      sha256 "6404637eba62393074b0a65036af8272eb8fd5317db68e4532805cda3729a6a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.2.2/zat-x86_64-linux.tar.gz"
      sha256 "0a8d67a35ca3f66cf4f9d7d7af469ff4d78785ab05a6d24de0280dda09c7cd67"
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
