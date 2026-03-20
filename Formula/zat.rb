class Zat < Formula
  desc "Code outline viewer for LLMs"
  homepage "https://github.com/bglgwyng/zat"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.2/zat-aarch64-darwin.tar.gz"
      sha256 "ef65b6414d0e87d9a51df1275e4999fa21b8a49b1dbcc5f897725f703cd56fe8"
    end
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.2/zat-x86_64-darwin.tar.gz"
      sha256 "d8a0d7459bcbae14923ddd72675f695388345401ecac0b58528558f16e1dbb21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bglgwyng/zat/releases/download/v0.4.2/zat-x86_64-linux.tar.gz"
      sha256 "8256aa02b579e872ef2b51b88ed395ea53b3789ef6515c7dc3b4ecbc0f82ef2f"
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
