class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.4.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.4/zat-aarch64-darwin.tar.gz"
      sha256 "e561117fee0a6ec7786bb9614504d2e3ed2531ea6ef89116d6f4e65e68d53c85"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.4/zat-x86_64-darwin.tar.gz"
      sha256 "2edce7d1bcd4143bc6331eafe44894a9dfe10d62f34fba5a959aac1063db8b80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.4/zat-x86_64-linux.tar.gz"
      sha256 "e455d677b39635f76423035df6ddb9c6be6d4850cf508c73f7b198de2a69bb4f"
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
