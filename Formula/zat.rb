class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.3/zat-aarch64-darwin.tar.gz"
      sha256 "5cd35d6eb0d6052f8b7c9230bf37e406f2c50e01e1c5f4b0d8444fca6f189c19"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.3/zat-x86_64-darwin.tar.gz"
      sha256 "677cf636af601f3e2fd3cf407ada1547faa6cf8eda3ec1059db7c802b31bae0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.5.3/zat-x86_64-linux.tar.gz"
      sha256 "90ce49e0da91166e5bbae93992f776d9c0c357554a5627e059c33903cd9077b2"
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
